.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarLeftMargin:I

.field private avatarSize:I

.field private avatarTop:I

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkDrawLeft:I

.field private checkDrawTop:I

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentDialogId:J

.field private currentEditDate:I

.field private customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

.field private dialogMuted:Z

.field private dialogsType:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawError:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private drawPin:Z

.field private drawStatus:Z

.field private drawVerified:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private halfCheckDrawLeft:I

.field private index:I

.field private isDialogCell:Z

.field private isFav:Z

.field private isSelected:Z

.field private lastMessageDate:I

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field private lastUnreadState:Z

.field private markAsUnread:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private nameTop:I

.field private pinLeft:I

.field private pinTop:I

.field private rect:Landroid/graphics/RectF;

.field private statusBG:Landroid/graphics/drawable/GradientDrawable;

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private unreadCount:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x421c0000    # 39.0f

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 84
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 85
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 86
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 87
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 103
    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    .line 110
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 113
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 118
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 122
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 126
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 133
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    .line 139
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameTop:I

    .line 140
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarSize:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    .line 142
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarMarginLeft:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    .line 154
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    int-to-float v0, v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 156
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 160
    return-void

    .line 155
    :cond_0
    const/high16 v0, 0x41d00000    # 26.0f

    goto :goto_0
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v0, :cond_0

    .line 826
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 853
    :goto_0
    return-object v0

    .line 827
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 828
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 829
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 830
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 833
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 834
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_0

    .line 835
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 836
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_0

    .line 837
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 838
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_0

    .line 839
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 840
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_0

    .line 841
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 842
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_0

    .line 843
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 844
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_0

    .line 845
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 846
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto :goto_0

    .line 847
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 848
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    goto :goto_0

    .line 849
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 850
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 853
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private setStatusColor()V
    .locals 5

    .prologue
    const v4, -0x333334

    .line 1015
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "ALongTimeAgo"

    const v3, 0x7f070012

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1025
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    sub-int v0, v2, v3

    .line 1026
    .local v0, "l":I
    :goto_1
    if-lez v0, :cond_0

    const v2, 0x15180

    if-ge v0, v2, :cond_0

    .line 1027
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1029
    :cond_0
    return-void

    .line 1018
    .end local v0    # "l":I
    :cond_1
    const-string/jumbo v2, "Online"

    const v3, 0x7f0704f9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const v3, -0xff198a

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 1020
    :cond_2
    const-string/jumbo v2, "Lately"

    const v3, 0x7f0703d1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1021
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 1025
    :cond_4
    const/4 v0, -0x2

    goto :goto_1
.end method


# virtual methods
.method public buildLayout()V
    .locals 42

    .prologue
    .line 222
    const-string/jumbo v34, ""

    .line 223
    .local v34, "nameString":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 224
    .local v3, "timeString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 225
    .local v20, "countString":Ljava/lang/String;
    const-string/jumbo v31, ""

    .line 226
    .local v31, "messageString":Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 227
    .local v36, "printingString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "printingString":Ljava/lang/CharSequence;
    check-cast v36, Ljava/lang/CharSequence;

    .line 230
    .restart local v36    # "printingString":Ljava/lang/CharSequence;
    :cond_0
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    .line 231
    .local v22, "currentNamePaint":Landroid/text/TextPaint;
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    .line 232
    .local v21, "currentMessagePaint":Landroid/text/TextPaint;
    const/16 v19, 0x1

    .line 234
    .local v19, "checkMessage":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    .line 241
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 242
    .local v35, "plusPreferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unread_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    .line 243
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarSize:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    .line 244
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarMarginLeft:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v2, :cond_1f

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    .line 248
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 249
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 250
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_f

    .line 251
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 252
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 280
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    .line 281
    const-string/jumbo v2, "FromYou"

    const v4, 0x7f07032e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .line 282
    .local v33, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v2, :cond_19

    .line 285
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_18

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mediaPaint:Landroid/text/TextPaint;

    .line 287
    :goto_2
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 288
    .local v37, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "chats_attachMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v37 .. v37}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 296
    :goto_3
    invoke-virtual/range {v37 .. v37}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 297
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "chats_nameMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_1
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 308
    .end local v33    # "name":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v2, :cond_1d

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 312
    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v8, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 317
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    if-eqz v2, :cond_1e

    .line 318
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 320
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 328
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 330
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 619
    :cond_3
    :goto_7
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 620
    .local v5, "timeWidth":I
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 621
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_6c

    .line 622
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    .line 629
    :goto_8
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_6d

    .line 630
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 635
    .local v9, "nameWidth":I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v2, :cond_6e

    .line 636
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 645
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v2, :cond_73

    .line 646
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 647
    .local v38, "w":I
    sub-int v9, v9, v38

    .line 648
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_72

    .line 649
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 677
    .end local v38    # "w":I
    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_77

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_77

    .line 678
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v38, v2, v4

    .line 679
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 680
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    .line 681
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 691
    .end local v38    # "w":I
    :cond_6
    :goto_c
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 693
    const/16 v2, 0xa

    const/16 v4, 0x20

    :try_start_0
    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    invoke-static {v2, v0, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 694
    .local v7, "nameStringFinal":Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v22

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v7    # "nameStringFinal":Ljava/lang/CharSequence;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v32, v2, v4

    .line 701
    .local v32, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_7a

    .line 702
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 703
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_78

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    move/from16 v18, v0

    .line 708
    .local v18, "avatarLeft":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    :goto_f
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_7e

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    :goto_10
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_7f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    :goto_11
    move/from16 v0, v18

    invoke-virtual {v8, v0, v2, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 709
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v2, :cond_81

    .line 710
    const/high16 v2, 0x41f80000    # 31.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v38

    .line 711
    .restart local v38    # "w":I
    sub-int v13, v32, v38

    .line 712
    .end local v32    # "messageWidth":I
    .local v13, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_80

    .line 713
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 746
    .end local v38    # "w":I
    :goto_12
    if-eqz v19, :cond_9

    .line 747
    if-nez v31, :cond_7

    .line 748
    const-string/jumbo v31, ""

    .line 750
    :cond_7
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 751
    .local v30, "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_8

    .line 752
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 754
    :cond_8
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 755
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 757
    .end local v30    # "mess":Ljava/lang/String;
    :cond_9
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 758
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 760
    .local v11, "messageStringFinal":Ljava/lang/CharSequence;
    :try_start_1
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v21

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 761
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_a

    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 768
    :cond_a
    :goto_13
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_89

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v29

    .line 771
    .local v29, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 772
    .local v40, "widthpx":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_88

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_88

    .line 773
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 777
    :cond_b
    :goto_14
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-nez v2, :cond_c

    .line 778
    int-to-double v14, v9

    cmpg-double v2, v40, v14

    if-gez v2, :cond_c

    .line 779
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 783
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v29

    .line 785
    .restart local v29    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-nez v2, :cond_d

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 787
    .restart local v40    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v40, v14

    if-gez v2, :cond_d

    .line 788
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 815
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_d
    :goto_15
    return-void

    .line 242
    .end local v5    # "timeWidth":I
    .end local v9    # "nameWidth":I
    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v18    # "avatarLeft":I
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 254
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 255
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1

    .line 258
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 261
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 262
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_13

    .line 263
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 265
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_11

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_16
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1

    :cond_11
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_16

    :cond_12
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_16

    .line 268
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_14

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_17
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 269
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1

    .line 268
    :cond_14
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_17

    :cond_15
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_17

    .line 272
    :cond_16
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_17

    .line 273
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1

    .line 275
    :cond_17
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1

    .line 285
    .restart local v33    # "name":Ljava/lang/String;
    :cond_18
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 290
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 291
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_1a

    .line 292
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 294
    :cond_1a
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_3

    .line 301
    .end local v30    # "mess":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v2, :cond_2

    .line 303
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1c

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mediaPaint:Landroid/text/TextPaint;

    :goto_18
    goto/16 :goto_4

    :cond_1c
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto :goto_18

    .line 314
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_5

    .line 323
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_6

    .line 333
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_2c

    .line 334
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 335
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 336
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2b

    .line 337
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 338
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 386
    :cond_20
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    move/from16 v28, v0

    .line 387
    .local v28, "lastDate":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_21

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    .line 391
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_38

    .line 392
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v2, :cond_25

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    move/from16 v0, v28

    if-le v0, v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v2, :cond_25

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 394
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-eqz v2, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v2, :cond_26

    .line 396
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 402
    :cond_26
    :goto_1a
    if-eqz v36, :cond_3a

    .line 403
    move-object/from16 v31, v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 404
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_39

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageTypingPaint:Landroid/text/TextPaint;

    .line 531
    :cond_27
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_5a

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    .line 539
    :cond_28
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_5c

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 541
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 589
    :cond_29
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_64

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 591
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2a

    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupPaint:Landroid/text/TextPaint;

    .line 614
    :cond_2a
    :goto_1e
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 615
    const-string/jumbo v2, "HiddenName"

    const v4, 0x7f070354

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_7

    .line 340
    .end local v28    # "lastDate":I
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 341
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_19

    .line 344
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_34

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2e

    .line 346
    :cond_2d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 347
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 352
    :goto_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 354
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_31

    .line 355
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 357
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_2f

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_20
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_19

    .line 349
    :cond_2e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 350
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    goto :goto_1f

    .line 357
    :cond_2f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_20

    :cond_30
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_20

    .line 360
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_32

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_21
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 361
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_19

    .line 360
    :cond_32
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_21

    :cond_33
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_21

    .line 364
    :cond_34
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_36

    .line 365
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 369
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_20

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_35

    .line 371
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 372
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 373
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_37

    .line 374
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 375
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 381
    :cond_35
    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_19

    .line 367
    :cond_36
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_22

    .line 377
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 378
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_23

    .line 399
    .restart local v28    # "lastDate":I
    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto/16 :goto_1a

    .line 404
    :cond_39
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_1b

    .line 407
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_3f

    .line 410
    const/16 v19, 0x0

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 412
    const-string/jumbo v2, "Draft"

    const v4, 0x7f070237

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 413
    .local v23, "draftString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 414
    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3b

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsMediaColor:I

    :goto_24
    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v2, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 415
    move-object/from16 v31, v37

    .line 416
    goto/16 :goto_1b

    .line 414
    :cond_3b
    const-string/jumbo v2, "chats_draft"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_24

    .line 417
    .end local v23    # "draftString":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 418
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_3d

    .line 419
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 421
    :cond_3d
    const-string/jumbo v2, "Draft"

    const v4, 0x7f070237

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 422
    .restart local v23    # "draftString":Ljava/lang/String;
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 423
    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3e

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsMediaColor:I

    :goto_25
    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v2, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 424
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 425
    goto/16 :goto_1b

    .line 423
    :cond_3e
    const-string/jumbo v2, "chats_draft"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_25

    .line 427
    .end local v23    # "draftString":Ljava/lang/String;
    .end local v30    # "mess":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_46

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_27

    .line 429
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v2, :cond_40

    .line 431
    const-string/jumbo v2, "EncryptionProcessing"

    const v4, 0x7f070272

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 432
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v2, :cond_42

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 434
    const-string/jumbo v2, "AwaitingEncryption"

    const v4, 0x7f0700cb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 436
    :cond_41
    const-string/jumbo v2, "AwaitingEncryption"

    const v4, 0x7f0700cb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v10, ""

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 438
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_43

    .line 439
    const-string/jumbo v2, "EncryptionRejected"

    const v4, 0x7f070273

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 440
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_27

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_45

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 443
    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f070267

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 445
    :cond_44
    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f070267

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v10, ""

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 448
    :cond_45
    const-string/jumbo v2, "EncryptedChatStartedIncoming"

    const v4, 0x7f070266

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 453
    :cond_46
    const/16 v27, 0x0

    .line 454
    .local v27, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v26, 0x0

    .line 455
    .local v26, "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 456
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    .line 460
    :goto_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_48

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    .line 462
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_1b

    .line 458
    :cond_47
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v26

    goto :goto_26

    .line 464
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_54

    if-nez v26, :cond_54

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 467
    const-string/jumbo v2, "FromYou"

    const v4, 0x7f07032e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .line 475
    .restart local v33    # "name":Ljava/lang/String;
    :goto_27
    const/16 v19, 0x0

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4e

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 479
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_49

    .line 480
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 482
    :cond_49
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 502
    .end local v30    # "mess":Ljava/lang/String;
    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_28
    invoke-virtual/range {v37 .. v37}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4a

    .line 503
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "chats_nameMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 505
    :cond_4a
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v31

    .line 506
    goto/16 :goto_1b

    .line 468
    .end local v33    # "name":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_4b
    if-eqz v27, :cond_4c

    .line 469
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_27

    .line 470
    .end local v33    # "name":Ljava/lang/String;
    :cond_4c
    if-eqz v26, :cond_4d

    .line 471
    move-object/from16 v0, v26

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_27

    .line 473
    .end local v33    # "name":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v33, "DELETED"

    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_27

    .line 483
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 484
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_4f

    .line 486
    const-string/jumbo v2, "%s: \ud83c\udfae %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 492
    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_29
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "chats_attachMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v37 .. v37}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_28

    .line 487
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xe

    if-ne v2, v4, :cond_50

    .line 488
    const-string/jumbo v2, "%s: \ud83c\udfa7 %s - %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto :goto_29

    .line 490
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_50
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto :goto_29

    .line 493
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_53

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 495
    .restart local v30    # "mess":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_52

    .line 496
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 498
    :cond_52
    const-string/jumbo v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v33, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .line 499
    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_28

    .line 500
    .end local v30    # "mess":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_53
    const-string/jumbo v2, ""

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v37

    .restart local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_28

    .line 507
    .end local v33    # "name":Ljava/lang/String;
    .end local v37    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v2, :cond_55

    .line 508
    const-string/jumbo v2, "AttachPhotoExpired"

    const v4, 0x7f0700b4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 509
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v2, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v2, :cond_56

    .line 510
    const-string/jumbo v2, "AttachVideoExpired"

    const v4, 0x7f0700bb

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1b

    .line 511
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_57

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    goto/16 :goto_1b

    .line 514
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_58

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\ud83c\udfae "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 521
    :goto_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 522
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_1b

    .line 516
    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xe

    if-ne v2, v4, :cond_59

    .line 517
    const-string/jumbo v2, "\ud83c\udfa7 %s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto :goto_2a

    .line 519
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    goto :goto_2a

    .line 533
    .end local v26    # "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v27    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v2, :cond_5b

    .line 534
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c

    .line 535
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_28

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c

    .line 546
    :cond_5c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v2, :cond_5e

    .line 547
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 548
    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 550
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    if-eqz v2, :cond_5d

    .line 551
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 552
    .local v25, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unread_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    .line 563
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5d
    :goto_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v2, :cond_63

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 565
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_1d

    .line 557
    :cond_5e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 558
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    if-eqz v2, :cond_5d

    .line 559
    const-string/jumbo v20, " "

    goto :goto_2b

    .line 569
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 573
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_1d

    .line 575
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_62

    :cond_61
    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 577
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_1d

    .line 576
    :cond_62
    const/4 v2, 0x0

    goto :goto_2c

    .line 582
    :cond_63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 583
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_1d

    .line 592
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2a

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_66

    .line 594
    const-string/jumbo v2, "ChatYourSelfName"

    const v4, 0x7f070187

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    .line 609
    :goto_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_65

    .line 610
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 612
    :cond_65
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    goto/16 :goto_1e

    .line 595
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x309

    if-eq v2, v4, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x14d

    if-eq v2, v4, :cond_6b

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6b

    .line 596
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_68

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v2, :cond_67

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 597
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    goto :goto_2d

    .line 599
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_69

    .line 600
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_2d

    .line 602
    :cond_69
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6a

    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameUnknownPaint:Landroid/text/TextPaint;

    .line 603
    :cond_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_2d

    .line 607
    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_2d

    .line 624
    .end local v28    # "lastDate":I
    .restart local v5    # "timeWidth":I
    :cond_6c
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto/16 :goto_8

    .line 632
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 633
    .restart local v9    # "nameWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_9

    .line 637
    :cond_6e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_70

    .line 639
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_6f

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_2e
    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_a

    :cond_6f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_2e

    .line 640
    :cond_70
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_71

    .line 641
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_a

    .line 642
    :cond_71
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v2, :cond_4

    .line 643
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_a

    .line 651
    .restart local v38    # "w":I
    :cond_72
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_b

    .line 654
    .end local v38    # "w":I
    :cond_73
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v2, :cond_5

    .line 655
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 656
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 657
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v2, :cond_75

    .line 658
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 659
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_74

    .line 660
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 661
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_b

    .line 663
    :cond_74
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 664
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 665
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v4, v4, v38

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_b

    .line 668
    :cond_75
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_76

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_b

    .line 671
    :cond_76
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_b

    .line 683
    .end local v38    # "w":I
    :cond_77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_6

    .line 684
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v38, v2, v4

    .line 685
    .restart local v38    # "w":I
    sub-int v9, v9, v38

    .line 686
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    .line 687
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_c

    .line 695
    .end local v38    # "w":I
    :catch_0
    move-exception v24

    .line 696
    .local v24, "e":Ljava/lang/Exception;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 703
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v32    # "messageWidth":I
    :cond_78
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_79

    const/high16 v2, 0x41500000    # 13.0f

    :goto_2f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    goto/16 :goto_e

    :cond_79
    const/high16 v2, 0x41100000    # 9.0f

    goto :goto_2f

    .line 705
    :cond_7a
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 706
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v4

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    sub-int/2addr v2, v6

    :goto_30
    sub-int v18, v4, v2

    .restart local v18    # "avatarLeft":I
    goto/16 :goto_e

    .end local v18    # "avatarLeft":I
    :cond_7b
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7c

    const/high16 v2, 0x42820000    # 65.0f

    :goto_31
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_30

    :cond_7c
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_31

    .line 708
    .restart local v18    # "avatarLeft":I
    :cond_7d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    goto/16 :goto_f

    :cond_7e
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_10

    :cond_7f
    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto/16 :goto_11

    .line 715
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    .restart local v38    # "w":I
    :cond_80
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 716
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_12

    .line 718
    .end local v13    # "messageWidth":I
    .end local v38    # "w":I
    .restart local v32    # "messageWidth":I
    :cond_81
    if-nez v20, :cond_82

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    if-eqz v2, :cond_86

    .line 720
    :cond_82
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    if-eqz v2, :cond_83

    const-string/jumbo v2, " "

    :goto_32
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v2, v14

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 721
    new-instance v10, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    if-eqz v2, :cond_84

    const-string/jumbo v11, " "

    :goto_33
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 723
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 724
    .restart local v38    # "w":I
    sub-int v13, v32, v38

    .line 725
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_85

    .line 726
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 731
    :goto_34
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_12

    .end local v13    # "messageWidth":I
    .end local v38    # "w":I
    .restart local v32    # "messageWidth":I
    :cond_83
    move-object/from16 v2, v20

    .line 720
    goto :goto_32

    :cond_84
    move-object/from16 v11, v20

    .line 721
    goto :goto_33

    .line 728
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    .restart local v38    # "w":I
    :cond_85
    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 729
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto :goto_34

    .line 733
    .end local v13    # "messageWidth":I
    .end local v38    # "w":I
    .restart local v32    # "messageWidth":I
    :cond_86
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v2, :cond_8d

    .line 734
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v38, v2, v4

    .line 735
    .restart local v38    # "w":I
    sub-int v13, v32, v38

    .line 736
    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_87

    .line 737
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 743
    .end local v38    # "w":I
    :goto_35
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_12

    .line 739
    .restart local v38    # "w":I
    :cond_87
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 740
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v38

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto :goto_35

    .line 762
    .end local v38    # "w":I
    .restart local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    :catch_1
    move-exception v24

    .line 763
    .restart local v24    # "e":Ljava/lang/Exception;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 774
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v29    # "left":F
    .restart local v40    # "widthpx":D
    :cond_88
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_b

    .line 775
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_14

    .line 793
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    :cond_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_8c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_8c

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v29

    .line 795
    .restart local v29    # "left":F
    int-to-float v2, v9

    cmpl-float v2, v29, v2

    if-nez v2, :cond_8a

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 797
    .restart local v40    # "widthpx":D
    int-to-double v14, v9

    cmpg-double v2, v40, v14

    if-gez v2, :cond_8a

    .line 798
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 801
    .end local v40    # "widthpx":D
    :cond_8a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v2, :cond_8b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_8c

    .line 802
    :cond_8b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v2

    add-float v2, v2, v29

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 805
    .end local v29    # "left":F
    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v29

    .line 807
    .restart local v29    # "left":F
    int-to-float v2, v13

    cmpl-float v2, v29, v2

    if-nez v2, :cond_d

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    .line 809
    .restart local v40    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v40, v14

    if-gez v2, :cond_d

    .line 810
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v40

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_15

    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v29    # "left":F
    .end local v40    # "widthpx":D
    .restart local v32    # "messageWidth":I
    :cond_8d
    move/from16 v13, v32

    .end local v32    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    goto/16 :goto_35
.end method

.method public checkCurrentDialogIndex()V
    .locals 8

    .prologue
    .line 857
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 858
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 859
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v1

    .line 860
    .local v1, "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 861
    .local v2, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 862
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v3, v4, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    if-ne v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eq v3, v4, :cond_4

    .line 867
    :cond_3
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 868
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 871
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .end local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4
    return-void
.end method

.method public getDialogId()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 203
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 197
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x41b80000    # 23.0f

    const/high16 v8, 0x41840000    # 16.5f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x41380000    # 11.5f

    const/4 v1, 0x0

    .line 1033
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1040
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v0, :cond_3

    .line 1041
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1044
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_d

    .line 1045
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1046
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1065
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1067
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v0

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameTop:I

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1072
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1073
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    .line 1078
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1079
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1081
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1088
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v0, :cond_12

    .line 1089
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1090
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1103
    :cond_7
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_15

    .line 1104
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    :goto_5
    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1105
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1113
    :cond_8
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v0, :cond_18

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v9

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v9

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1116
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1117
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1133
    :cond_9
    :goto_7
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_b

    .line 1134
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_a

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsDividerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1135
    :cond_a
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1c

    .line 1136
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1142
    :cond_b
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1144
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    if-nez v0, :cond_c

    .line 1145
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1d

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    :goto_9
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1146
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    add-int/2addr v2, v0

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1149
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isFav:Z

    if-eqz v0, :cond_0

    .line 1150
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_FavDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1151
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_FavDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1047
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v0, :cond_f

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_e

    .line 1051
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1052
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_superGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1054
    :cond_e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1055
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1057
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_10

    .line 1058
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1059
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1060
    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v0, :cond_4

    .line 1061
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1062
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1067
    :cond_11
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_2

    .line 1082
    :catch_0
    move-exception v6

    .line 1083
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1091
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v0, :cond_7

    .line 1092
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v0, :cond_13

    .line 1093
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1094
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1095
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1096
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 1098
    :cond_13
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1099
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 1104
    :cond_14
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto/16 :goto_5

    .line 1106
    :cond_15
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_8

    .line 1107
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    :goto_a
    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1108
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    :goto_b
    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1109
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1110
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 1107
    :cond_16
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_a

    .line 1108
    :cond_17
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_b

    .line 1118
    :cond_18
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->markAsUnread:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 1119
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v7, v0, v2

    .line 1120
    .local v7, "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v7

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    add-int/2addr v4, v7

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1121
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v4, v9, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_c
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1123
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_19

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1127
    :cond_19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 1121
    :cond_1a
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto :goto_c

    .line 1128
    .end local v7    # "x":I
    :cond_1b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v0, :cond_9

    .line 1129
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1130
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 1138
    :cond_1c
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1145
    :cond_1d
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_9
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_1

    .line 213
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->setMeasuredDimension(II)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;I)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "date"    # I

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 177
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 178
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 179
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 180
    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 181
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 182
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 187
    return-void

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0

    :cond_2
    move v0, v1

    .line 182
    goto :goto_1
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V
    .locals 2
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "i"    # I
    .param p3, "type"    # I

    .prologue
    .line 163
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 165
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    .line 166
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 168
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 1
    .param p1, "dialog"    # Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 173
    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 818
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 819
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 821
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    .line 822
    return-void
.end method

.method public update(I)V
    .locals 14
    .param p1, "mask"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v3, v3, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v4

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 1005
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 1011
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 1012
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 876
    goto :goto_0

    .line 883
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_16

    .line 884
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 885
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_4

    if-nez p1, :cond_4

    .line 886
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v12, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 888
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 890
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 891
    iget-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 900
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_4
    :goto_5
    if-eqz p1, :cond_f

    .line 901
    const/4 v7, 0x0

    .line 902
    .local v7, "continueUpdate":Z
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_8

    .line 903
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_8

    .line 904
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 905
    .local v11, "printString":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    if-eqz v11, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    if-nez v11, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    if-eqz v11, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 906
    :cond_7
    const/4 v7, 0x1

    .line 910
    .end local v11    # "printString":Ljava/lang/CharSequence;
    :cond_8
    if-nez v7, :cond_9

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_9

    .line 912
    const/4 v7, 0x1

    .line 915
    :cond_9
    if-nez v7, :cond_a

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_a

    .line 917
    const/4 v7, 0x1

    .line 920
    :cond_a
    if-nez v7, :cond_b

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_b

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_b

    .line 922
    const/4 v7, 0x1

    .line 925
    :cond_b
    if-nez v7, :cond_c

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_c

    .line 927
    const/4 v7, 0x1

    .line 930
    :cond_c
    if-nez v7, :cond_d

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_d

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v3

    if-eq v0, v3, :cond_17

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 933
    const/4 v7, 0x1

    .line 942
    :cond_d
    :goto_6
    if-nez v7, :cond_e

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_e

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v0, v3, :cond_e

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 945
    const/4 v7, 0x1

    .line 949
    :cond_e
    if-eqz v7, :cond_1

    .line 954
    .end local v7    # "continueUpdate":Z
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 955
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 956
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 957
    iput-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 958
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v0

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isFav:Z

    .line 959
    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    long-to-int v10, v12

    .line 960
    .local v10, "lower_id":I
    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/16 v0, 0x20

    shr-long/2addr v12, v0

    long-to-int v9, v12

    .line 961
    .local v9, "high_id":I
    if-eqz v10, :cond_1b

    .line 962
    if-ne v9, v2, :cond_19

    .line 963
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 984
    :cond_10
    :goto_8
    const/4 v1, 0x0

    .line 985
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1c

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_11

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 989
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 990
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->setStatusColor()V

    .line 998
    :cond_12
    :goto_9
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_13

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 1003
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_1

    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v9    # "high_id":I
    .end local v10    # "lower_id":I
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_14
    move v0, v5

    .line 887
    goto/16 :goto_3

    :cond_15
    move v0, v5

    .line 889
    goto/16 :goto_4

    .line 897
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_16
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto/16 :goto_5

    .line 934
    .restart local v7    # "continueUpdate":Z
    :cond_17
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_d

    .line 935
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v12, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 936
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_d

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v3, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eq v0, v3, :cond_d

    .line 937
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 938
    const/4 v7, 0x1

    goto/16 :goto_6

    .end local v7    # "continueUpdate":Z
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_18
    move v0, v5

    .line 954
    goto/16 :goto_7

    .line 965
    .restart local v9    # "high_id":I
    .restart local v10    # "lower_id":I
    :cond_19
    if-gez v10, :cond_1a

    .line 966
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 967
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v0, :cond_10

    .line 968
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 969
    .local v6, "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_10

    .line 970
    iput-object v6, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto/16 :goto_8

    .line 974
    .end local v6    # "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_8

    .line 978
    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_10

    .line 980
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_8

    .line 991
    .restart local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_12

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_1d

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 995
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_9

    .line 1008
    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v9    # "high_id":I
    .end local v10    # "lower_id":I
    :cond_1e
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    goto/16 :goto_2
.end method
