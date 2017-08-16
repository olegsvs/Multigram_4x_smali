.class public Lorg/telegram/messenger/MessagesController;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesController$PrintingUser;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesController; = null

.field public static final UPDATE_MASK_ALL:I = 0x5ff

.field public static final UPDATE_MASK_AVATAR:I = 0x2

.field public static final UPDATE_MASK_CHANNEL:I = 0x2000

.field public static final UPDATE_MASK_CHAT_ADMINS:I = 0x4000

.field public static final UPDATE_MASK_CHAT_AVATAR:I = 0x8

.field public static final UPDATE_MASK_CHAT_MEMBERS:I = 0x20

.field public static final UPDATE_MASK_CHAT_NAME:I = 0x10

.field public static final UPDATE_MASK_NAME:I = 0x1

.field public static final UPDATE_MASK_NEW_MESSAGE:I = 0x800

.field public static final UPDATE_MASK_PHONE:I = 0x400

.field public static final UPDATE_MASK_READ_DIALOG_MESSAGE:I = 0x100

.field public static final UPDATE_MASK_SELECT_DIALOG:I = 0x200

.field public static final UPDATE_MASK_SEND_STATE:I = 0x1000

.field public static final UPDATE_MASK_STATUS:I = 0x4

.field public static final UPDATE_MASK_USER_PHONE:I = 0x80

.field public static final UPDATE_MASK_USER_PRINT:I = 0x40


# instance fields
.field public allowBigEmoji:Z

.field public blockedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public callConnectTimeout:I

.field public callPacketTimeout:I

.field public callReceiveTimeout:I

.field public callRingTimeout:I

.field public callsEnabled:Z

.field private channelViewsToReload:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelViewsToSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelsPts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private checkingLastMessagesDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogMainThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeleteTaskRunnable:Ljava/lang/Runnable;

.field private currentDeletingTaskChannelId:I

.field private currentDeletingTaskMids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeletingTaskTime:I

.field private final dialogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByRandomIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdmin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminSuperGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsEndReached:Z

.field public dialogsFavs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsMegaGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnSuperGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsSecrets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsServerOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUnread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public enableJoined:Z

.field private encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field private exportedChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;",
            ">;"
        }
    .end annotation
.end field

.field public firstGettingTask:Z

.field public fontSize:I

.field private fullUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_userFull;",
            ">;"
        }
    .end annotation
.end field

.field public gettingDifference:Z

.field private gettingDifferenceChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gettingNewDeleteTask:Z

.field private gettingUnknownChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public groupBigSize:I

.field public hideJoinedGroup:Z

.field public hideLeftGroup:Z

.field private joiningToChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintingStringCount:I

.field private lastStatusUpdateTime:J

.field private lastViewsCheckTime:J

.field public linkPrefix:Ljava/lang/String;

.field private loadedFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingBlockedUsers:Z

.field public loadingDialogs:Z

.field private loadingFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPeerSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maxBroadcastCount:I

.field public maxEditTime:I

.field public maxGroupCount:I

.field public maxMegagroupCount:I

.field public maxPinnedDialogsCount:I

.field public maxRecentGifsCount:I

.field public maxRecentStickersCount:I

.field private migratingDialogs:Z

.field public minGroupConvertSize:I

.field private needShortPollChannels:Landroid/util/SparseIntArray;

.field public nextDialogsCacheOffset:I

.field private objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private offlineSent:Z

.field public onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public printingStringsTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessagesController$PrintingUser;",
            ">;>;"
        }
    .end annotation
.end field

.field public ratingDecay:I

.field public registeringForPush:Z

.field private reloadingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpagesPending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public secretWebpagePreview:I

.field public sendingTypings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public serverDialogsEndReached:Z

.field private shortPollChannels:Landroid/util/SparseIntArray;

.field private statusRequest:I

.field private statusSettingState:I

.field private final updatesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatesQueuePts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueQts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimeChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimePts:J

.field private updatesStartWaitTimeQts:J

.field private updatesStartWaitTimeSeq:J

.field public updatingState:Z

.field private uploadingAvatar:Ljava/lang/String;

.field public useSystemEmoji:Z

.field private users:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0xa

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    .line 64
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 67
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    .line 70
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    .line 71
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    .line 72
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    .line 73
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    .line 74
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    .line 75
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    .line 77
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    .line 78
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    .line 80
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsSecrets:Ljava/util/ArrayList;

    .line 81
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnGroups:Ljava/util/ArrayList;

    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnSuperGroups:Ljava/util/ArrayList;

    .line 83
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnChannels:Ljava/util/ArrayList;

    .line 84
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminGroups:Ljava/util/ArrayList;

    .line 85
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminSuperGroups:Ljava/util/ArrayList;

    .line 86
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminChannels:Ljava/util/ArrayList;

    .line 89
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 93
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    .line 94
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    .line 95
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x14

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    .line 97
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    .line 98
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    .line 99
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x14

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    .line 105
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->createdDialogMainThreadIds:Ljava/util/ArrayList;

    .line 107
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    .line 108
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    .line 110
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 111
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    .line 113
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 114
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    .line 117
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    .line 118
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    .line 119
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    .line 120
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    .line 122
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    .line 123
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    .line 125
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 126
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 127
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 131
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    .line 132
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    .line 134
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    .line 135
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    .line 136
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    .line 137
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    .line 139
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    .line 140
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    .line 142
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    .line 159
    const/4 v10, 0x2

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 167
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 171
    const-string/jumbo v10, "t.me"

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 172
    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 173
    const/16 v10, 0xc8

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 174
    const/16 v10, 0x64

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    .line 175
    const/16 v10, 0x2710

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 176
    const/16 v10, 0xc8

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    .line 177
    const v10, 0x2a300

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 180
    const/16 v10, 0x1e

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 181
    const/16 v10, 0xc8

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 182
    const/16 v10, 0x4e20

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 183
    const v10, 0x15f90

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 184
    const/16 v10, 0x7530

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 185
    const/16 v10, 0x2710

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 186
    const/16 v10, 0xa

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 188
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    .line 226
    new-instance v10, Lorg/telegram/messenger/MessagesController$1;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/MessagesController$1;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    .line 255
    new-instance v10, Lorg/telegram/messenger/MessagesController$2;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/MessagesController$2;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    .line 293
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    .line 294
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    .line 295
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 296
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 297
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 298
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 299
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 300
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v10, p0, v11}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 301
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 302
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "Notifications"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 303
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "EnableContactJoined"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 305
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "plusconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 306
    .local v7, "plusPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "hideLeftGroup"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    .line 307
    const-string/jumbo v10, "hideJoinedGroup"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->hideJoinedGroup:Z

    .line 309
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "mainconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 310
    const-string/jumbo v10, "secretWebpage2"

    const/4 v11, 0x2

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 311
    const-string/jumbo v10, "maxGroupCount"

    const/16 v11, 0xc8

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 312
    const-string/jumbo v10, "maxMegagroupCount"

    const/16 v11, 0x2710

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 313
    const-string/jumbo v10, "maxRecentGifsCount"

    const/16 v11, 0xc8

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 314
    const-string/jumbo v10, "maxRecentStickersCount"

    const/16 v11, 0x1e

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 315
    const-string/jumbo v10, "maxEditTime"

    const/16 v11, 0xe10

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 316
    const-string/jumbo v10, "groupBigSize"

    const/16 v11, 0xa

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 317
    const-string/jumbo v10, "ratingDecay"

    const v11, 0x24ea00

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 319
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 320
    .local v9, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v11, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x12

    :goto_0
    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 321
    const-string/jumbo v10, "allowBigEmoji"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    .line 322
    const-string/jumbo v10, "useSystemEmoji"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    .line 323
    const-string/jumbo v10, "callsEnabled"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    .line 324
    const-string/jumbo v10, "linkPrefix"

    const-string/jumbo v11, "t.me"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 325
    const-string/jumbo v10, "callReceiveTimeout"

    const/16 v11, 0x4e20

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 326
    const-string/jumbo v10, "callRingTimeout"

    const v11, 0x15f90

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 327
    const-string/jumbo v10, "callConnectTimeout"

    const/16 v11, 0x7530

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 328
    const-string/jumbo v10, "callPacketTimeout"

    const/16 v11, 0x2710

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 329
    const/16 v10, 0xa

    iput v10, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 331
    const-string/jumbo v10, "disabledFeatures"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "disabledFeaturesString":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 334
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 335
    .local v1, "bytes":[B
    if-eqz v1, :cond_2

    .line 336
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 337
    .local v3, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    .line 338
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 339
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v6

    .line 340
    .local v6, "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v6, :cond_0

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 341
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "a":I
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    .end local v3    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "disabledFeaturesString":Ljava/lang/String;
    .end local v6    # "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    :cond_1
    const/16 v10, 0x10

    goto/16 :goto_0

    .line 345
    .restart local v4    # "disabledFeaturesString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 346
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 349
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MessagesController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MessagesController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MessagesController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskChannelId:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MessagesController;JZII)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MessagesController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    return p1
.end method

.method static synthetic access$4102(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4602(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MessagesController;IIIIIJ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # J

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    return-wide p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    return-wide p1
.end method

.method private applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 15
    .param p1, "dialog_id"    # J
    .param p3, "notify_settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 3706
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "Notifications"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3707
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3708
    .local v2, "currentValue":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3709
    .local v3, "currentValue2":I
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3710
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 3711
    .local v8, "updated":Z
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3712
    .local v4, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v4, :cond_0

    .line 3713
    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3715
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "silent_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3716
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_6

    .line 3717
    const/4 v7, 0x0

    .line 3718
    .local v7, "until":I
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    const v11, 0x1e13380

    add-int/2addr v10, v11

    if-le v9, v10, :cond_3

    .line 3719
    const/4 v9, 0x2

    if-eq v2, v9, :cond_1

    .line 3720
    const/4 v8, 0x1

    .line 3721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3722
    if-eqz v4, :cond_1

    .line 3723
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v10, 0x7fffffff

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3737
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    or-long/2addr v10, v12

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 3738
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 3749
    .end local v7    # "until":I
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3750
    if-eqz v8, :cond_2

    .line 3751
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3753
    :cond_2
    return-void

    .line 3727
    .restart local v7    # "until":I
    :cond_3
    const/4 v9, 0x3

    if-ne v2, v9, :cond_4

    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v3, v9, :cond_5

    .line 3728
    :cond_4
    const/4 v8, 0x1

    .line 3729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3731
    if-eqz v4, :cond_5

    .line 3732
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v7, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3735
    :cond_5
    move-object/from16 v0, p3

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_0

    .line 3740
    .end local v7    # "until":I
    :cond_6
    if-eqz v2, :cond_8

    const/4 v9, 0x1

    if-eq v2, v9, :cond_8

    .line 3741
    const/4 v8, 0x1

    .line 3742
    if-eqz v4, :cond_7

    .line 3743
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v10, 0x0

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3745
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3747
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1
.end method

.method private applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3756
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v3, 0x0

    .line 3757
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 3758
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3759
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v5, :cond_1

    .line 3760
    if-nez v3, :cond_0

    .line 3761
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3762
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3765
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_2

    .line 3766
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3772
    .local v2, "dialog_id":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3773
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v5, :cond_5

    .line 3774
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    const v7, 0x1e13380

    add-int/2addr v6, v7

    if-le v5, v6, :cond_4

    .line 3775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3776
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3757
    .end local v2    # "dialog_id":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3767
    :cond_2
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_3

    .line 3768
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3770
    .end local v2    # "dialog_id":I
    :cond_3
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3778
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3782
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3786
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "dialog_id":I
    :cond_6
    if-eqz v3, :cond_7

    .line 3787
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3789
    :cond_7
    return-void
.end method

.method public static checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8387
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8412
    :cond_0
    :goto_0
    return v5

    .line 8390
    :cond_1
    const/4 v3, 0x0

    .line 8391
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 8392
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const-string/jumbo v7, "user_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 8393
    .local v4, "user_id":I
    const-string/jumbo v7, "chat_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8394
    .local v1, "chat_id":I
    if-eqz v4, :cond_5

    .line 8395
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 8399
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 8402
    :cond_3
    const/4 v2, 0x0

    .line 8403
    .local v2, "reason":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 8404
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8408
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 8409
    invoke-static {p1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    move v5, v6

    .line 8410
    goto :goto_0

    .line 8396
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_2

    .line 8397
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_1

    .line 8405
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_4

    .line 8406
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private checkChannelError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "channelId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5631
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5642
    :goto_1
    return-void

    .line 5631
    :sswitch_0
    const-string/jumbo v4, "CHANNEL_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "CHANNEL_PUBLIC_GROUP_NA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "USER_BANNED_IN_CHANNEL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 5633
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5636
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5639
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5631
    :sswitch_data_0
    .sparse-switch
        -0x6bd947ea -> :sswitch_2
        -0x2f6631f9 -> :sswitch_0
        -0x1c1436b3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkDeletingTask(Z)Z
    .locals 4
    .param p1, "runnable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1637
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1639
    .local v0, "currentServerTime":I
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    iget v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-gt v3, v0, :cond_2

    .line 1640
    :cond_0
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 1641
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 1642
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1644
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 1645
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1646
    .local v1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Lorg/telegram/messenger/MessagesController$22;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/MessagesController$22;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1664
    const/4 v2, 0x1

    .line 1666
    .end local v1    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return v2
.end method

.method private deleteDialog(JZII)V
    .locals 25
    .param p1, "did"    # J
    .param p3, "first"    # Z
    .param p4, "onlyHistory"    # I
    .param p5, "max_id"    # I

    .prologue
    .line 2158
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v16, v0

    .line 2159
    .local v16, "lower_part":I
    const/16 v4, 0x20

    shr-long v6, p1, v4

    long-to-int v14, v6

    .line 2160
    .local v14, "high_id":I
    move/from16 v17, p5

    .line 2162
    .local v17, "max_id_delete":I
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 2163
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_3

    .line 2167
    :cond_2
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->uninstallShortcut(J)V

    .line 2170
    :cond_3
    if-eqz p3, :cond_9

    .line 2171
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2173
    .local v13, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v13, :cond_8

    .line 2174
    if-nez v17, :cond_4

    .line 2175
    const/4 v4, 0x0

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2177
    :cond_4
    if-eqz p4, :cond_5

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    .line 2178
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2180
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$39;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$39;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2189
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2192
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2197
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2199
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 2209
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 2210
    .local v21, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_b

    .line 2211
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    .line 2212
    .local v15, "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    :goto_2
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    .line 2218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_e

    if-eqz v16, :cond_e

    if-lez v15, :cond_e

    .line 2221
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 2222
    .local v18, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 2223
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 2224
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 2225
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 2226
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 2227
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 2228
    if-lez v16, :cond_c

    .line 2229
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2230
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2241
    :goto_3
    new-instance v19, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 2242
    .local v19, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2243
    .local v20, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2245
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 2247
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2252
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v15    # "lastMessageId":I
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v19    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2253
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2254
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$40;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$40;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2267
    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v4, 0x1

    if-eq v14, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    .line 2271
    if-eqz v16, :cond_11

    .line 2272
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v22

    .line 2273
    .local v22, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-nez v4, :cond_0

    .line 2276
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;-><init>()V

    .line 2277
    .local v23, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2278
    if-nez p4, :cond_f

    const v4, 0x7fffffff

    :goto_5
    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    .line 2279
    if-eqz p4, :cond_10

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    .line 2280
    move/from16 v11, v17

    .line 2281
    .local v11, "max_id_delete_final":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$41;

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/MessagesController$41;-><init>(Lorg/telegram/messenger/MessagesController;JII)V

    const/16 v7, 0x40

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 2206
    .end local v11    # "max_id_delete_final":I
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    .restart local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_a
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    goto/16 :goto_1

    .line 2214
    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_b
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 2215
    .restart local v15    # "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_2

    .line 2232
    .restart local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_c
    move/from16 v0, v16

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 2233
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2234
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2235
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_3

    .line 2237
    :cond_d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2238
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_3

    .line 2249
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_e
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto/16 :goto_4

    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v15    # "lastMessageId":I
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    .restart local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_f
    move/from16 v4, v17

    .line 2278
    goto :goto_5

    .line 2279
    :cond_10
    const/4 v4, 0x0

    goto :goto_6

    .line 2294
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_12

    .line 2295
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_0

    .line 2297
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method private getChannelDifference(I)V
    .locals 7
    .param p1, "channelId"    # I

    .prologue
    .line 5355
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 5356
    return-void
.end method

.method public static getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 2
    .param p0, "chatId"    # I

    .prologue
    .line 493
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public static getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 4
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 482
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .line 484
    .local v0, "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    .line 485
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    .line 488
    .end local v0    # "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_0
.end method

.method public static getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 498
    if-gez p0, :cond_2

    .line 499
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 500
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 502
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 503
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 516
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    return-object v1

    .line 505
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 506
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_0

    .line 509
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 510
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 511
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    .line 512
    if-eqz v2, :cond_0

    .line 513
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0
.end method

.method public static getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 3
    .param p0, "user_id"    # I

    .prologue
    .line 477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 478
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    return-object v1
.end method

.method public static getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 4
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 463
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 473
    :goto_0
    return-object v0

    .line 466
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 467
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 469
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 470
    .restart local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    .line 471
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesController;
    .locals 4

    .prologue
    .line 280
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 281
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesController;
    if-nez v0, :cond_1

    .line 282
    const-class v3, Lorg/telegram/messenger/MessagesController;

    monitor-enter v3

    .line 283
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 284
    if-nez v0, :cond_0

    .line 285
    new-instance v1, Lorg/telegram/messenger/MessagesController;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 287
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 289
    :cond_1
    return-object v0

    .line 287
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    goto :goto_0
.end method

.method public static getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 521
    if-gez p0, :cond_2

    .line 522
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 523
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v3, :cond_1

    .line 524
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 525
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 535
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    return-object v1

    .line 527
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .line 528
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_0

    .line 531
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 532
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 533
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private static getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 8362
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 8372
    :cond_0
    :goto_0
    return-object v2

    .line 8365
    :cond_1
    const-string/jumbo v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8366
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 8367
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8368
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v3, "-all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8369
    :cond_2
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 6321
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v0, :cond_0

    .line 6322
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6326
    :goto_0
    return v0

    .line 6323
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_1

    .line 6324
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    .line 6326
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    goto :goto_0
.end method

.method private getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 5094
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v0, :cond_0

    .line 5095
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    .line 5097
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    goto :goto_0
.end method

.method private getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 6306
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v0, :cond_1

    .line 6309
    :cond_0
    const/4 v0, 0x0

    .line 6316
    :goto_0
    return v0

    .line 6310
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v0, :cond_2

    .line 6311
    const/4 v0, 0x1

    goto :goto_0

    .line 6312
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v0, :cond_4

    .line 6314
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 6316
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2576
    if-nez p1, :cond_0

    .line 2577
    const-string/jumbo v0, ""

    .line 2584
    :goto_0
    return-object v0

    .line 2579
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2580
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 2581
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2582
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 2584
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x1

    .line 423
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 427
    .local v1, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 429
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Oops!"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 431
    const-string/jumbo v2, "OK"

    const v3, 0x7f0704f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 432
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 435
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNotifySettingsMuted(Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)Z
    .locals 2
    .param p1, "settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 8090
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I
    .locals 6
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5123
    if-nez p2, :cond_3

    .line 5124
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    .line 5125
    .local v0, "seq":I
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_0

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v0, :cond_2

    :cond_0
    move v1, v3

    .line 5149
    .end local v0    # "seq":I
    :cond_1
    :goto_0
    return v1

    .line 5127
    .restart local v0    # "seq":I
    :cond_2
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-lt v3, v0, :cond_1

    move v1, v2

    .line 5130
    goto :goto_0

    .line 5132
    .end local v0    # "seq":I
    :cond_3
    if-ne p2, v1, :cond_5

    .line 5133
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-gt v4, v5, :cond_4

    move v1, v2

    .line 5134
    goto :goto_0

    .line 5135
    :cond_4
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 5136
    goto :goto_0

    .line 5140
    :cond_5
    if-ne p2, v2, :cond_7

    .line 5141
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-gt v4, v5, :cond_6

    move v1, v2

    .line 5142
    goto :goto_0

    .line 5143
    :cond_6
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 5144
    goto :goto_0

    :cond_7
    move v1, v3

    .line 5149
    goto :goto_0
.end method

.method private migrateDialogs(IIIIIJ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "offsetDate"    # I
    .param p3, "offsetUser"    # I
    .param p4, "offsetChat"    # I
    .param p5, "offsetChannel"    # I
    .param p6, "accessPeer"    # J

    .prologue
    const/4 v2, 0x1

    .line 3164
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3167
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    .line 3169
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 3170
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    .line 3171
    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 3172
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3173
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start migrate with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3175
    if-nez p1, :cond_2

    .line 3176
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3190
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$58;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$58;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 3178
    :cond_2
    if-eqz p5, :cond_3

    .line 3179
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3180
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 3188
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_1

    .line 3181
    :cond_3
    if-eqz p3, :cond_4

    .line 3182
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3183
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_2

    .line 3185
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3186
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_2
.end method

.method public static openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 11
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "type"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 8449
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8544
    :cond_0
    :goto_0
    return-void

    .line 8452
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 8453
    .local v1, "object":Lorg/telegram/tgnet/TLObject;
    const/4 v6, 0x0

    .line 8454
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 8455
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_3

    move-object v6, v1

    .line 8456
    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 8457
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_2

    .line 8458
    const/4 v6, 0x0

    .line 8466
    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    .line 8467
    invoke-static {v6, v10, p1, p2, v9}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    .line 8460
    :cond_3
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 8461
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 8462
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v7, :cond_2

    .line 8463
    const/4 v0, 0x0

    goto :goto_1

    .line 8468
    :cond_4
    if-eqz v0, :cond_5

    .line 8469
    invoke-static {v10, v0, p1, v8, v9}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    .line 8471
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8474
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 8475
    .local v2, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v7, "Loading"

    const v8, 0x7f0703eb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8476
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 8477
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 8479
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 8480
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p0, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 8481
    move-object v5, p0

    .line 8482
    .local v5, "un":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$120;

    invoke-direct {v8, v2, p1, p2, v5}, Lorg/telegram/messenger/MessagesController$120;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v4

    .line 8527
    .local v4, "reqId":I
    const/4 v7, -0x2

    const-string/jumbo v8, "Cancel"

    const v9, 0x7f070105

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$121;

    invoke-direct {v9, v4, p1}, Lorg/telegram/messenger/MessagesController$121;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v7, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 8541
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 8542
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 5
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "type"    # I
    .param p4, "closeLast"    # Z

    .prologue
    const/4 v4, 0x1

    .line 8416
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 8446
    :cond_1
    :goto_0
    return-void

    .line 8419
    :cond_2
    const/4 v1, 0x0

    .line 8420
    .local v1, "reason":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 8421
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8429
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 8430
    invoke-static {p2, v1}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 8422
    :cond_4
    if-eqz p0, :cond_3

    .line 8423
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8424
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_3

    .line 8425
    const/4 p3, 0x1

    .line 8426
    const/4 p4, 0x1

    goto :goto_1

    .line 8432
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8433
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_6

    .line 8434
    const-string/jumbo v2, "chat_id"

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8438
    :goto_2
    if-nez p3, :cond_7

    .line 8439
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 8436
    :cond_6
    const-string/jumbo v2, "user_id"

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 8440
    :cond_7
    const/4 v2, 0x2

    if-ne p3, v2, :cond_8

    .line 8441
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2, v4, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto :goto_0

    .line 8443
    :cond_8
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method

.method private processChannelsUpdatesQueue(II)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v10, 0x1

    .line 5153
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5154
    .local v5, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v5, :cond_1

    .line 5210
    :cond_0
    :goto_0
    return-void

    .line 5157
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5158
    .local v2, "channelPts":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_3

    .line 5159
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5162
    :cond_3
    new-instance v7, Lorg/telegram/messenger/MessagesController$91;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/MessagesController$91;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5168
    const/4 v1, 0x0

    .line 5169
    .local v1, "anyProceed":Z
    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    .line 5170
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5172
    :cond_4
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 5173
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5175
    .local v4, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_5

    .line 5176
    const/4 v3, 0x2

    .line 5182
    .local v3, "updateState":I
    :goto_2
    if-nez v3, :cond_7

    .line 5183
    invoke-virtual {p0, v4, v10}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 5184
    const/4 v1, 0x1

    .line 5185
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5186
    add-int/lit8 v0, v0, -0x1

    .line 5172
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5177
    .end local v3    # "updateState":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v7, v8, :cond_6

    .line 5178
    const/4 v3, 0x0

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 5180
    .end local v3    # "updateState":I
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 5187
    :cond_7
    if-ne v3, v10, :cond_a

    .line 5188
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 5189
    .local v6, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v6, :cond_9

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x5dc

    cmp-long v7, v8, v10

    if-gtz v7, :cond_9

    .line 5190
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " UPDATES QUEUE - will wait more time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5191
    if-eqz v1, :cond_0

    .line 5192
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5196
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " UPDATES QUEUE - getChannelDifference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5197
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5198
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5199
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0

    .line 5203
    .end local v6    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5204
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 5207
    .end local v3    # "updateState":I
    .end local v4    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5208
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UPDATES CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " QUEUE PROCEED - OK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processUpdatesQueue(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    .line 5213
    const/4 v4, 0x0

    .line 5214
    .local v4, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez p1, :cond_2

    .line 5215
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 5216
    new-instance v5, Lorg/telegram/messenger/MessagesController$92;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$92;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5239
    :cond_0
    :goto_0
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 5240
    const/4 v1, 0x0

    .line 5241
    .local v1, "anyProceed":Z
    if-ne p2, v7, :cond_1

    .line 5242
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5243
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    if-nez p1, :cond_4

    .line 5244
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 5251
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 5252
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5253
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/MessagesController;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I

    move-result v2

    .line 5254
    .local v2, "updateState":I
    if-nez v2, :cond_6

    .line 5255
    invoke-virtual {p0, v3, v6}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 5256
    const/4 v1, 0x1

    .line 5257
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5258
    add-int/lit8 v0, v0, -0x1

    .line 5251
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5222
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_2
    if-ne p1, v6, :cond_3

    .line 5223
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 5224
    new-instance v5, Lorg/telegram/messenger/MessagesController$93;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$93;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 5230
    :cond_3
    if-ne p1, v7, :cond_0

    .line 5231
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 5232
    new-instance v5, Lorg/telegram/messenger/MessagesController$94;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$94;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 5245
    .restart local v1    # "anyProceed":Z
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_4
    if-ne p1, v6, :cond_5

    .line 5246
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_1

    .line 5248
    :cond_5
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    goto :goto_1

    .line 5259
    .restart local v0    # "a":I
    .restart local v2    # "updateState":I
    :cond_6
    if-ne v2, v6, :cond_a

    .line 5260
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v5, v6, v8

    if-gtz v5, :cond_9

    .line 5261
    :cond_7
    const-string/jumbo v5, "HOLE IN UPDATES QUEUE - will wait more time"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5262
    if-eqz v1, :cond_8

    .line 5263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 5282
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_8
    :goto_4
    return-void

    .line 5267
    .restart local v0    # "a":I
    .restart local v1    # "anyProceed":Z
    .restart local v2    # "updateState":I
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_9
    const-string/jumbo v5, "HOLE IN UPDATES QUEUE - getDifference"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5268
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 5269
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5270
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto :goto_4

    .line 5274
    :cond_a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5275
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 5278
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5279
    const-string/jumbo v5, "UPDATES QUEUE PROCEED - OK"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5281
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    :cond_c
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    goto :goto_4
.end method

.method private reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    .locals 8
    .param p2, "did"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const-wide/16 v6, 0x0

    .line 1024
    cmp-long v3, p2, v6

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 1028
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    if-eqz p1, :cond_3

    .line 1029
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1030
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 1031
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1029
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1034
    :cond_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1037
    .end local v0    # "a":I
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_3
    long-to-int v3, p2

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 1038
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_4

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1041
    :cond_4
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_5
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$10;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$10;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private reloadMessages(Ljava/util/ArrayList;J)V
    .locals 12
    .param p2, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Lorg/telegram/messenger/ChatObject;->getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1272
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 1274
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1275
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 1276
    move-object v10, v9

    .line 1282
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    .local v10, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1283
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1284
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1285
    .local v8, "mid":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1283
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1278
    .end local v6    # "a":I
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "mid":Ljava/lang/Integer;
    .end local v10    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 1279
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    .line 1280
    move-object v10, v9

    .restart local v10    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 1288
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    .restart local v6    # "a":I
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "mid":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1290
    .end local v8    # "mid":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    if-nez v7, :cond_5

    .line 1294
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    :cond_5
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1298
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v0, Lorg/telegram/messenger/MessagesController$13;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$13;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private setUpdatesStartTime(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    .line 5102
    if-nez p1, :cond_1

    .line 5103
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 5109
    :cond_0
    :goto_0
    return-void

    .line 5104
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5105
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 5106
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5107
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0
.end method

.method public static setUserAdminRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p0, "chatId"    # I
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "rights"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "isMegagroup"    # Z
    .param p4, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1815
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 1819
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1820
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1821
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 1822
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$28;

    invoke-direct {v2, p0, p4, v0, p3}, Lorg/telegram/messenger/MessagesController$28;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static setUserBannedRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p0, "chatId"    # I
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "rights"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .param p3, "isMegagroup"    # Z
    .param p4, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1784
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 1788
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1789
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1790
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 1791
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {v2, p0, p4, v0, p3}, Lorg/telegram/messenger/MessagesController$27;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private static showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8376
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8384
    :cond_0
    :goto_0
    return-void

    .line 8379
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8380
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8381
    const-string/jumbo v1, "OK"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8382
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8383
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updatePrintingStrings()V
    .locals 21

    .prologue
    .line 2588
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2589
    .local v10, "newPrintingStrings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/CharSequence;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2591
    .local v11, "newPrintingStringsTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2592
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2593
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2594
    .local v6, "key":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2596
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    long-to-int v9, v6

    .line 2598
    .local v9, "lower_id":I
    if-gtz v9, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_14

    .line 2599
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2600
    .local v12, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2601
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v13, :cond_2

    .line 2704
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v9    # "lower_id":I
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    return-void

    .line 2604
    .restart local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .restart local v6    # "key":J
    .restart local v9    # "lower_id":I
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    if-eqz v14, :cond_4

    .line 2605
    if-gez v9, :cond_3

    .line 2606
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsRecordingAudio"

    const v17, 0x7f070396

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2608
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "RecordingAudio"

    const v17, 0x7f0705bb

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2611
    :cond_4
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;

    if-nez v14, :cond_5

    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;

    if-eqz v14, :cond_7

    .line 2612
    :cond_5
    if-gez v9, :cond_6

    .line 2613
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsRecordingRound"

    const v17, 0x7f070397

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2615
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "RecordingRound"

    const v17, 0x7f0705bc

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2618
    :cond_7
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    if-eqz v14, :cond_9

    .line 2619
    if-gez v9, :cond_8

    .line 2620
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingAudio"

    const v17, 0x7f070398

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2622
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingAudio"

    const v17, 0x7f070651

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2625
    :cond_9
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    if-nez v14, :cond_a

    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    if-eqz v14, :cond_c

    .line 2626
    :cond_a
    if-gez v9, :cond_b

    .line 2627
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingVideo"

    const v17, 0x7f07039c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2629
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingVideoStatus"

    const v17, 0x7f070657

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2632
    :cond_c
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    if-eqz v14, :cond_e

    .line 2633
    if-gez v9, :cond_d

    .line 2634
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingFile"

    const v17, 0x7f070399

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2638
    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2636
    :cond_d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingFile"

    const v17, 0x7f070652

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2639
    :cond_e
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    if-eqz v14, :cond_10

    .line 2640
    if-gez v9, :cond_f

    .line 2641
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingPhoto"

    const v17, 0x7f07039b

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2643
    :cond_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingPhoto"

    const v17, 0x7f070655

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2646
    :cond_10
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    if-eqz v14, :cond_12

    .line 2647
    if-gez v9, :cond_11

    .line 2648
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingGame"

    const v17, 0x7f07039a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2650
    :cond_11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingGame"

    const v17, 0x7f070653

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2654
    :cond_12
    if-gez v9, :cond_13

    .line 2655
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "IsTyping"

    const v20, 0x7f07039d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    :goto_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2657
    :cond_13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "Typing"

    const v17, 0x7f0706fb

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2662
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    const/4 v3, 0x0

    .line 2663
    .local v3, "count":I
    const-string/jumbo v8, ""

    .line 2664
    .local v8, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2665
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v0, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2666
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_17

    .line 2667
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_16

    .line 2668
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2670
    :cond_16
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2671
    add-int/lit8 v3, v3, 0x1

    .line 2673
    :cond_17
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v3, v0, :cond_15

    .line 2677
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    .line 2678
    const/4 v14, 0x1

    if-ne v3, v14, :cond_19

    .line 2679
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "IsTyping"

    const v20, 0x7f07039d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    :goto_a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2681
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v14, v0, :cond_1a

    .line 2682
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "AndMoreTyping"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2684
    :cond_1a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "AreTyping"

    const v20, 0x7f07008d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2692
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v3    # "count":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "lower_id":I
    :cond_1b
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 2694
    new-instance v14, Lorg/telegram/messenger/MessagesController$51;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$51;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    .locals 11
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 8108
    cmp-long v7, p1, v8

    if-lez v7, :cond_1

    .line 8109
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8110
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-eqz v1, :cond_7

    .line 8111
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8141
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    :cond_0
    :goto_0
    return v6

    .line 8114
    :cond_1
    cmp-long v7, p1, v8

    if-gez v7, :cond_7

    .line 8115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8116
    .local v4, "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 8117
    .local v3, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 8118
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8122
    .end local v3    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8123
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v2, 0x0

    .line 8124
    .local v2, "changed":Z
    if-eqz v1, :cond_6

    .line 8125
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 8126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 8127
    .local v5, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v7, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 8128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8129
    add-int/lit8 v0, v0, -0x1

    .line 8130
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8131
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8133
    :cond_4
    const/4 v2, 0x1

    .line 8125
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8137
    .end local v0    # "a":I
    .end local v5    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_6
    if-nez v2, :cond_0

    .line 8141
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v2    # "changed":Z
    .end local v4    # "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSupportUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 442
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 443
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "333"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 444
    const v1, 0x514c8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 445
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 446
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 447
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 448
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 449
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 451
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 452
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "42777"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 453
    const v1, 0xbdb28

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 454
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 455
    const-string/jumbo v1, "Notifications"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 456
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 457
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 458
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 459
    return-void
.end method

.method public addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 6
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "reload"    # Z

    .prologue
    .line 4064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4065
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v2, v1

    .line 4066
    .local v2, "messageId":J
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 4067
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 4069
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4070
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;I)V

    .line 4071
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$63;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/MessagesController$63;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4093
    return-void
.end method

.method public addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "count_fwd"    # I
    .param p5, "botHash"    # Ljava/lang/String;
    .param p6, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 4646
    if-nez p2, :cond_1

    .line 4782
    :cond_0
    :goto_0
    return-void

    .line 4650
    :cond_1
    if-lez p1, :cond_8

    .line 4653
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    .line 4654
    .local v4, "isChannel":Z
    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    .line 4655
    .local v9, "isMegagroup":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 4656
    .local v5, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz p5, :cond_2

    if-eqz v4, :cond_6

    if-nez v9, :cond_6

    .line 4657
    :cond_2
    if-eqz v4, :cond_5

    .line 4658
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v2, :cond_4

    .line 4659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4662
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 4663
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4664
    move-object v8, v14

    .line 4665
    .local v8, "request":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4710
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$82;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController$82;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v15, v8, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 4654
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v9    # "isMegagroup":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 4683
    .restart local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .restart local v9    # "isMegagroup":Z
    :cond_4
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4684
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4685
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4686
    move-object v8, v14

    .line 4688
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4690
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    :cond_5
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;-><init>()V

    .line 4691
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    move/from16 v0, p1

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:I

    .line 4692
    move/from16 v0, p4

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    .line 4693
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4694
    move-object v8, v14

    .line 4695
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4697
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    :cond_6
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4698
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4699
    if-eqz v4, :cond_7

    .line 4700
    move/from16 v0, p1

    neg-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4705
    :goto_3
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4706
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4707
    move-object v8, v14

    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4702
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4703
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move/from16 v0, p1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3

    .line 4759
    .end local v4    # "isChannel":Z
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "isMegagroup":Z
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    :cond_8
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_0

    .line 4760
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_9

    .line 4761
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v2, v3, :cond_0

    .line 4760
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 4766
    :cond_9
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 4767
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4768
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4769
    .local v12, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4770
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v12, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4772
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4773
    .local v13, "newPart":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4774
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4775
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4776
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4777
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4778
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const/4 v15, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4779
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p3, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4487
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4508
    :cond_0
    :goto_0
    return-void

    .line 4490
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4491
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4492
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    .line 4493
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$74;

    invoke-direct {v2, p0, p3, v0}, Lorg/telegram/messenger/MessagesController$74;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public blockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1758
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1759
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    .line 1764
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    .line 1768
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1769
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    .line 1770
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1771
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$26;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$26;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1766
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    goto :goto_1
.end method

.method public canPinDialog(Z)Z
    .locals 6
    .param p1, "secret"    # Z

    .prologue
    .line 5883
    const/4 v1, 0x0

    .line 5884
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5885
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5886
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    .line 5887
    .local v3, "lower_id":I
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    .line 5884
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5890
    :cond_2
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_1

    .line 5891
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5894
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "lower_id":I
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    if-ge v1, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public cancelLoadFullChat(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1016
    return-void
.end method

.method public cancelLoadFullUser(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1011
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1012
    return-void
.end method

.method public cancelTyping(IJ)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "dialog_id"    # J

    .prologue
    .line 2707
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2708
    .local v0, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 2709
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    :cond_0
    return-void
.end method

.method public changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 5
    .param p1, "chat_id"    # I
    .param p2, "uploadedAvatar"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 4913
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4914
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;-><init>()V

    .line 4915
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4916
    if-eqz p2, :cond_0

    .line 4917
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4918
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4922
    :goto_0
    move-object v1, v0

    .line 4934
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$85;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v4, 0x40

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4943
    return-void

    .line 4920
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_0

    .line 4924
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;-><init>()V

    .line 4925
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->chat_id:I

    .line 4926
    if-eqz p2, :cond_2

    .line 4927
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4928
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4932
    :goto_2
    move-object v1, v0

    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4930
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_2
.end method

.method public changeChatTitle(ILjava/lang/String;)V
    .locals 9
    .param p1, "chat_id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4878
    if-lez p1, :cond_1

    .line 4880
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4881
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;-><init>()V

    .line 4882
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4883
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->title:Ljava/lang/String;

    .line 4884
    move-object v3, v2

    .line 4891
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    .local v3, "request":Lorg/telegram/tgnet/TLObject;
    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$84;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$84;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v6, 0x40

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4909
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    return-void

    .line 4886
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;-><init>()V

    .line 4887
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->chat_id:I

    .line 4888
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->title:Ljava/lang/String;

    .line 4889
    move-object v3, v2

    .restart local v3    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_0

    .line 4901
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4902
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4904
    .local v1, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4905
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4906
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4907
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public checkChannelInviter(I)V
    .locals 1
    .param p1, "chat_id"    # I

    .prologue
    .line 6221
    new-instance v0, Lorg/telegram/messenger/MessagesController$103;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$103;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6303
    return-void
.end method

.method protected checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 11
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p3, "taskId"    # J

    .prologue
    const/4 v10, 0x1

    .line 3819
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v2

    .line 3820
    .local v6, "lower_id":I
    if-eqz v6, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3906
    :cond_0
    :goto_0
    return-void

    .line 3823
    :cond_1
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 3824
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    if-nez p2, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_1
    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3825
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_0

    .line 3828
    iput v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 3829
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3832
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_3

    .line 3833
    const/4 v0, 0x0

    .line 3835
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3836
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3837
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 3838
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3839
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3840
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3841
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3842
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3843
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3844
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3845
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 3846
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3847
    invoke-virtual {p2, v7}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v7

    .line 3851
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 3856
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$61;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$61;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .end local v4    # "newTaskId":J
    :cond_2
    move-object v1, p2

    .line 3824
    goto :goto_1

    .line 3848
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v8

    .line 3849
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3853
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, p3

    .restart local v4    # "newTaskId":J
    goto :goto_3

    .line 3848
    .end local v4    # "newTaskId":J
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v8

    move-object v0, v7

    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 629
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->cleanup()V

    .line 630
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->cleanup()V

    .line 631
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->cleanup()V

    .line 632
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->cleanup()V

    .line 633
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->cleanup()V

    .line 634
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->cleanup()V

    .line 635
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->cleanup()V

    .line 636
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->cleanup()V

    .line 638
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 639
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 640
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 641
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 642
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 643
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 644
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 645
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 648
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 649
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 650
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 652
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 654
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 657
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 660
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 662
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 663
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 664
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 665
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 666
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 667
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 668
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 669
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 670
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 672
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 673
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 674
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 675
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$5;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogMainThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 690
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 692
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 695
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 696
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 697
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 698
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 700
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 701
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    .line 702
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskChannelId:I

    .line 703
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    .line 704
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 705
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 706
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 707
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 708
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 709
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 710
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 711
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    .line 712
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 713
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 714
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 715
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 717
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$6;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 730
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 731
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 732
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 735
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 736
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 737
    return-void
.end method

.method protected clearFullUsers()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1020
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1021
    return-void
.end method

.method public convertGroup()V
    .locals 0

    .prologue
    .line 6218
    return-void
.end method

.method public convertToMegaGroup(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 4423
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;-><init>()V

    .line 4424
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;->chat_id:I

    .line 4425
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 4426
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0703eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4427
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4428
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 4429
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$72;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/messenger/MessagesController$72;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 4468
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$73;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/MessagesController$73;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4480
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4484
    :goto_0
    return-void

    .line 4481
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
    .locals 20
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "about"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4285
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 4286
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 4287
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 4288
    move-object/from16 v0, p1

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 4289
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 4290
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 4291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 4292
    const/4 v4, 0x1

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 4293
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 4294
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 4295
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4296
    .local v13, "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4297
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v13, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4299
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 4300
    .local v12, "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    .line 4301
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4302
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4303
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 4304
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 4305
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:I

    .line 4306
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->admin_id:I

    .line 4307
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    const/4 v6, 0x1

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    .line 4308
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_0

    .line 4309
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4310
    .local v17, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4311
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4313
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4308
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4315
    .end local v17    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4317
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 4318
    .local v14, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 4319
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 4320
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 4321
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v6

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 4322
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4323
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 4324
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 4325
    const-wide/16 v6, 0x0

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 4326
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 4327
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4328
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-direct {v15, v14, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 4329
    .local v15, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v4, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 4331
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4332
    .local v16, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4334
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4335
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 4336
    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 4337
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4338
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4340
    const/4 v4, 0x0

    .line 4419
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v10    # "a":I
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    .end local v12    # "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    .end local v13    # "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v14    # "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v15    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v16    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    return v4

    .line 4341
    :cond_1
    if-nez p4, :cond_4

    .line 4342
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;-><init>()V

    .line 4343
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->title:Ljava/lang/String;

    .line 4344
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    .line 4345
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 4346
    .local v19, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v19, :cond_2

    .line 4344
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4349
    :cond_2
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->users:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4351
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$70;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$70;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto :goto_1

    .line 4380
    .end local v10    # "a":I
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, p4

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    .line 4381
    :cond_5
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;-><init>()V

    .line 4382
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    .line 4383
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    .line 4384
    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_6

    .line 4385
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    .line 4389
    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$71;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$71;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto/16 :goto_1

    .line 4387
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    goto :goto_4

    .line 4419
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public deleteDialog(JI)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "onlyHistory"    # I

    .prologue
    .line 2154
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    .line 2155
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V
    .locals 9
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 2009
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V

    .line 2010
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V
    .locals 20
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .param p6, "taskId"    # J
    .param p8, "taskRequest"    # Lorg/telegram/tgnet/TLObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZJ",
            "Lorg/telegram/tgnet/TLObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2013
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    if-nez p8, :cond_1

    .line 2114
    :goto_0
    return-void

    .line 2016
    :cond_1
    const/4 v14, 0x0

    .line 2017
    .local v14, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v16, 0x0

    cmp-long v15, p6, v16

    if-nez v15, :cond_7

    .line 2018
    if-nez p4, :cond_3

    .line 2019
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_4

    .line 2020
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2021
    .local v8, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 2022
    .local v12, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_2

    .line 2023
    const/4 v15, 0x1

    iput-boolean v15, v12, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 2019
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2027
    .end local v4    # "a":I
    .end local v8    # "id":Ljava/lang/Integer;
    .end local v12    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    .line 2029
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2030
    .restart local v14    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_6

    .line 2031
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2032
    .local v9, "mid":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_5

    .line 2033
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2036
    .end local v9    # "mid":Ljava/lang/Integer;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    .line 2037
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 2038
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v15

    sget v16, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2042
    .end local v4    # "a":I
    :cond_7
    if-eqz p4, :cond_9

    .line 2044
    if-eqz p8, :cond_8

    move-object/from16 v13, p8

    .line 2045
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    .line 2046
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    move-wide/from16 v10, p6

    .line 2064
    .local v10, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v16, Lorg/telegram/messenger/MessagesController$35;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/telegram/messenger/MessagesController$35;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 2048
    .end local v10    # "newTaskId":J
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_8
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    .line 2049
    .restart local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    .line 2050
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v15

    iput-object v15, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2052
    const/4 v5, 0x0

    .line 2054
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->getObjectSize()I

    move-result v15

    add-int/lit8 v15, v15, 0x8

    invoke-direct {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v15, 0x7

    :try_start_1
    invoke-virtual {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2056
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2057
    invoke-virtual {v13, v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 2061
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .restart local v10    # "newTaskId":J
    goto :goto_3

    .line 2058
    .end local v10    # "newTaskId":J
    :catch_0
    move-exception v7

    .line 2059
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2077
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_9
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    .line 2078
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2081
    :cond_a
    if-eqz p8, :cond_b

    move-object/from16 v13, p8

    .line 2082
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    .line 2083
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    move-wide/from16 v10, p6

    .line 2101
    .restart local v10    # "newTaskId":J
    :goto_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v16, Lorg/telegram/messenger/MessagesController$36;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesController$36;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 2085
    .end local v10    # "newTaskId":J
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    :cond_b
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    .line 2086
    .restart local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    .line 2087
    move/from16 v0, p5

    iput-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    .line 2089
    const/4 v5, 0x0

    .line 2091
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_2
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->getObjectSize()I

    move-result v15

    add-int/lit8 v15, v15, 0x8

    invoke-direct {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2092
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v15, 0x7

    :try_start_3
    invoke-virtual {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2093
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 2094
    invoke-virtual {v13, v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 2098
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .restart local v10    # "newTaskId":J
    goto :goto_6

    .line 2095
    .end local v10    # "newTaskId":J
    :catch_1
    move-exception v7

    .line 2096
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2095
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_8

    .line 2058
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :catch_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_5
.end method

.method public deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "offset"    # I

    .prologue
    .line 2133
    if-nez p3, :cond_0

    .line 2134
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V

    .line 2136
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;-><init>()V

    .line 2137
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2138
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2139
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$38;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$38;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2151
    return-void
.end method

.method public deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 15
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4785
    if-nez p2, :cond_1

    .line 4875
    :cond_0
    :goto_0
    return-void

    .line 4788
    :cond_1
    if-lez p1, :cond_5

    .line 4789
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    .line 4791
    .local v6, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4792
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    .line 4793
    .local v5, "isChannel":Z
    if-eqz v5, :cond_4

    .line 4794
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v1, :cond_3

    .line 4795
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_2

    .line 4796
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;-><init>()V

    .line 4797
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4798
    move-object v13, v12

    .line 4825
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    .local v13, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v1, Lorg/telegram/messenger/MessagesController$83;

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$83;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V

    const/16 v2, 0x40

    invoke-virtual {v14, v13, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 4800
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;-><init>()V

    .line 4801
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4802
    move-object v13, v12

    .line 4803
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4805
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 4806
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4807
    iput-object v6, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4808
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 4809
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 4810
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 4811
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 4812
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 4813
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    .line 4814
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    .line 4815
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    .line 4816
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 4817
    move-object v13, v12

    .line 4818
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4820
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_4
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    .line 4821
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    move/from16 v0, p1

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    .line 4822
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4823
    move-object v13, v12

    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4852
    .end local v5    # "isChannel":Z
    .end local v6    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5
    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_0

    .line 4853
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4854
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4855
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4856
    .local v10, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4857
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v10, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4859
    const/4 v8, 0x0

    .line 4860
    .local v8, "changed":Z
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 4861
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4862
    .local v11, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v1, v2, :cond_8

    .line 4863
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4864
    const/4 v8, 0x1

    .line 4868
    .end local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    if-eqz v8, :cond_7

    .line 4869
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4870
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x3

    const/4 v14, 0x0

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4872
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v14, 0x20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4860
    .restart local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
    .locals 7
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .prologue
    const/4 v6, 0x0

    .line 1915
    if-nez p1, :cond_2

    .line 1916
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 1917
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1918
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1919
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1920
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1921
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1923
    :cond_0
    if-nez v1, :cond_1

    .line 1969
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 1926
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1927
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1928
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x5ff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1929
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$32;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$32;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1960
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;-><init>()V

    .line 1961
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$33;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$33;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public didAddedNewTask(ILandroid/util/SparseArray;)V
    .locals 2
    .param p1, "minDate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p2, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$19;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1618
    new-instance v0, Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$20;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1624
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 540
    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v10, :cond_1

    .line 541
    aget-object v4, p2, v12

    check-cast v4, Ljava/lang/String;

    .line 542
    .local v4, "location":Ljava/lang/String;
    aget-object v3, p2, v11

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 544
    .local v3, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 545
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    .line 546
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    iput-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 547
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/messenger/MessagesController$4;

    invoke-direct {v11, p0}, Lorg/telegram/messenger/MessagesController$4;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v10, v9, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 626
    .end local v3    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v4    # "location":Ljava/lang/String;
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v10, :cond_2

    .line 591
    aget-object v4, p2, v12

    check-cast v4, Ljava/lang/String;

    .line 592
    .restart local v4    # "location":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 593
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    goto :goto_0

    .line 595
    .end local v4    # "location":Ljava/lang/String;
    :cond_2
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne p1, v10, :cond_5

    .line 596
    aget-object v6, p2, v12

    check-cast v6, Ljava/lang/Integer;

    .line 597
    .local v6, "msgId":Ljava/lang/Integer;
    aget-object v7, p2, v11

    check-cast v7, Ljava/lang/Integer;

    .line 598
    .local v7, "newMsgId":Ljava/lang/Integer;
    const/4 v10, 0x3

    aget-object v1, p2, v10

    check-cast v1, Ljava/lang/Long;

    .line 599
    .local v1, "did":Ljava/lang/Long;
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 600
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 601
    iget-object v10, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 602
    iget-object v10, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 603
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 604
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_3

    .line 605
    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 606
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 609
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 611
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_4
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "obj":Lorg/telegram/messenger/MessageObject;
    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 612
    .restart local v8    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_0

    .line 613
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 615
    .end local v1    # "did":Ljava/lang/Long;
    .end local v6    # "msgId":Ljava/lang/Integer;
    .end local v7    # "newMsgId":Ljava/lang/Integer;
    .end local v8    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_5
    sget v10, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    if-ne p1, v10, :cond_0

    .line 616
    aget-object v5, p2, v12

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 617
    .local v5, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 618
    .local v2, "existMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_0

    .line 619
    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 620
    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v10, :cond_0

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v10, :cond_6

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v10, :cond_0

    .line 621
    :cond_6
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->setType()V

    .line 622
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public generateJoinMessage(IZ)V
    .locals 12
    .param p1, "chat_id"    # I
    .param p2, "ignoreLeft"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 6166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 6167
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_0

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 6214
    :cond_1
    :goto_0
    return-void

    .line 6171
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6172
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6173
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6174
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6175
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6176
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6177
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6178
    neg-int v0, p1

    int-to-long v10, v0

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6179
    iput-boolean v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 6180
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6181
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6182
    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 6183
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6185
    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6188
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6190
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6191
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6192
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6194
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$101;

    invoke-direct {v3, p0, v9}, Lorg/telegram/messenger/MessagesController$101;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6205
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6207
    new-instance v0, Lorg/telegram/messenger/MessagesController$102;

    invoke-direct {v0, p0, p1, v9}, Lorg/telegram/messenger/MessagesController$102;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public generateUpdateMessage()V
    .locals 3

    .prologue
    .line 5002
    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5032
    :cond_0
    :goto_0
    return-void

    .line 5005
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;-><init>()V

    .line 5006
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;->prev_app_version:Ljava/lang/String;

    .line 5007
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$88;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$88;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getBlockedUsers(Z)V
    .locals 3
    .param p1, "cache"    # Z

    .prologue
    .line 1863
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v1, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 1867
    if-eqz p1, :cond_2

    .line 1868
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V

    goto :goto_0

    .line 1870
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    .line 1871
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    .line 1872
    const/16 v1, 0xc8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 1873
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$30;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$30;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .locals 17
    .param p1, "channelId"    # I
    .param p2, "newDialogType"    # I
    .param p3, "taskId"    # J
    .param p5, "inputChannel"    # Lorg/telegram/tgnet/TLRPC$InputChannel;

    .prologue
    .line 5359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 5360
    .local v12, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v12, :cond_0

    .line 5361
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 5363
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5628
    :cond_1
    :goto_0
    return-void

    .line 5366
    :cond_2
    const/16 v13, 0x64

    .line 5368
    .local v13, "limit":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 5369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5370
    .local v8, "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 5373
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5374
    const/4 v13, 0x1

    .line 5391
    :cond_3
    if-nez p5, :cond_4

    .line 5392
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p5

    .line 5394
    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 5395
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 5396
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    .line 5376
    .end local v8    # "channelPts":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5377
    .restart local v8    # "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_8

    .line 5378
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5379
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    .line 5380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5382
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 5386
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 5401
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_a

    .line 5402
    const/4 v9, 0x0

    .line 5404
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/TLRPC$InputChannel;->getObjectSize()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5405
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x6

    :try_start_1
    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5406
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5407
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5408
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 5412
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v6

    .line 5417
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "newTaskId":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5418
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;-><init>()V

    .line 5419
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 5420
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    .line 5421
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    .line 5422
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    .line 5423
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    .line 5424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start getChannelDifference with pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5425
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$97;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$97;-><init>(Lorg/telegram/messenger/MessagesController;IIJ)V

    invoke-virtual {v15, v14, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 5409
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v11

    .line 5410
    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5414
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    move-wide/from16 v6, p3

    .restart local v6    # "newTaskId":J
    goto :goto_2

    .line 5423
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 5409
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 755
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDifference()V
    .locals 4

    .prologue
    .line 5645
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5646
    return-void
.end method

.method public getDifference(IIIZ)V
    .locals 4
    .param p1, "pts"    # I
    .param p2, "date"    # I
    .param p3, "qts"    # I
    .param p4, "slice"    # Z

    .prologue
    const/4 v3, 0x1

    .line 5649
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    .line 5650
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-nez v1, :cond_1

    .line 5651
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    .line 5880
    :cond_0
    :goto_0
    return-void

    .line 5654
    :cond_1
    if-nez p4, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_0

    .line 5657
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5658
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;-><init>()V

    .line 5659
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    .line 5660
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5661
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    .line 5662
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    if-nez v1, :cond_3

    .line 5663
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5665
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start getDifference with date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5666
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5667
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$98;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$98;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 759
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method public getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 9
    .param p1, "chat_id"    # I
    .param p2, "created"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 763
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 764
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-nez v5, :cond_0

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v5, :cond_1

    .line 765
    :cond_0
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 766
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V

    .line 769
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 774
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 775
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 776
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v0, v7}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 777
    invoke-virtual {p0, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 780
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    return-object v0

    .line 770
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 2
    .param p1, "chat_id"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method public getNewDeleteTask(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1627
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$21;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1634
    return-void
.end method

.method public getUpdatesStartTime(I)J
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 5112
    if-nez p1, :cond_0

    .line 5113
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 5119
    :goto_0
    return-wide v0

    .line 5114
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5115
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 5116
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 5117
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0

    .line 5119
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 740
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getUserAbout(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1003
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    return-object v0
.end method

.method public getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 744
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 745
    :cond_0
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hideReportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1377
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1381
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1384
    long-to-int v3, p1

    if-eqz v3, :cond_0

    .line 1385
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1386
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p3, :cond_3

    .line 1387
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1391
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$14;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1388
    :cond_3
    if-eqz p4, :cond_2

    .line 1389
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public isDialogCreated(J)Z
    .locals 3
    .param p1, "dialog_id"    # J

    .prologue
    .line 784
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogMainThreadIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDialogMuted(J)Z
    .locals 7
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8094
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 8095
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8096
    .local v0, "mute_type":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 8104
    :cond_0
    :goto_0
    return v3

    .line 8098
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 8099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8100
    .local v1, "mute_until":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-ge v1, v5, :cond_0

    .end local v1    # "mute_until":I
    :cond_2
    move v3, v4

    .line 8104
    goto :goto_0
.end method

.method public loadChannelParticipants(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "chat_id"    # Ljava/lang/Integer;

    .prologue
    .line 2332
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2360
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2338
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2339
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2340
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2341
    const/16 v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 2342
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$44;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$44;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V
    .locals 2
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z

    .prologue
    .line 2363
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 2364
    return-void
.end method

.method public loadCurrentState()V
    .locals 3

    .prologue
    .line 5065
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-eqz v1, :cond_0

    .line 5091
    :goto_0
    return-void

    .line 5068
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 5069
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;-><init>()V

    .line 5070
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getState;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$90;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$90;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadDialogPhotos(IIIJZI)V
    .locals 14
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "fromCache"    # Z
    .param p7, "classGuid"    # I

    .prologue
    .line 1702
    if-eqz p6, :cond_1

    .line 1703
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getDialogPhotos(IIIJI)V

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1705
    :cond_1
    if-lez p1, :cond_2

    .line 1706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1707
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_0

    .line 1710
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 1711
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 1712
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 1713
    move-wide/from16 v0, p4

    long-to-int v2, v0

    int-to-long v2, v2

    iput-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 1714
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1715
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$24;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$24;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1724
    .local v12, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1725
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    .end local v12    # "reqId":I
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    if-gez p1, :cond_0

    .line 1726
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1727
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1728
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1729
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1730
    move-wide/from16 v0, p4

    long-to-int v2, v0

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1731
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1732
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1733
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$25;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$25;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1752
    .restart local v12    # "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public loadDialogs(IIZ)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z

    .prologue
    .line 3082
    iget-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v8, :cond_0

    .line 3161
    :goto_0
    return-void

    .line 3085
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3086
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3087
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "load cacheOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cache = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3088
    if-eqz p3, :cond_2

    .line 3089
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V

    goto :goto_0

    :cond_1
    iget v8, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    goto :goto_1

    .line 3091
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 3092
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    iput p2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 3093
    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    .line 3094
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 3095
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_3

    .line 3096
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3097
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3098
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3099
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3102
    :cond_3
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3103
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3104
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    if-nez v8, :cond_5

    .line 3105
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3151
    :cond_4
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$57;

    invoke-direct {v9, p0, p2}, Lorg/telegram/messenger/MessagesController$57;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 3107
    :cond_5
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    if-eqz v8, :cond_6

    .line 3108
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3109
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    sget v9, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 3117
    :goto_3
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    sget-wide v10, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_2

    .line 3110
    :cond_6
    sget v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    if-eqz v8, :cond_7

    .line 3111
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3112
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    sget v9, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_3

    .line 3114
    :cond_7
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3115
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    sget v9, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3

    .line 3120
    :cond_8
    const/4 v2, 0x0

    .line 3121
    .local v2, "found":Z
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "a":I
    :goto_4
    if-ltz v0, :cond_b

    .line 3122
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3123
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v8, :cond_a

    .line 3121
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3126
    :cond_a
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v8

    .line 3127
    .local v5, "lower_id":I
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v3, v8

    .line 3128
    .local v3, "high_id":I
    if-eqz v5, :cond_9

    const/4 v8, 0x1

    if-eq v3, v8, :cond_9

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_9

    .line 3129
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 3130
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-lez v8, :cond_9

    .line 3131
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3132
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3134
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v8, :cond_c

    .line 3135
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v8

    .line 3141
    .local v4, "id":I
    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3142
    const/4 v2, 0x1

    .line 3147
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "id":I
    .end local v5    # "lower_id":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_b
    if-nez v2, :cond_4

    .line 3148
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_2

    .line 3136
    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v3    # "high_id":I
    .restart local v5    # "lower_id":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_c
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v8, :cond_d

    .line 3137
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v8

    .restart local v4    # "id":I
    goto :goto_5

    .line 3139
    .end local v4    # "id":I
    :cond_d
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v4    # "id":I
    goto :goto_5
.end method

.method public loadFullChat(IIZ)V
    .locals 11
    .param p1, "chat_id"    # I
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1117
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    neg-int v1, p1

    int-to-long v4, v1

    .line 1123
    .local v4, "dialog_id":J
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1124
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1125
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 1126
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1127
    move-object v9, v0

    .line 1136
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    .local v9, "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$11;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController$11;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JII)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v8

    .line 1207
    .local v8, "reqId":I
    if-eqz p2, :cond_0

    .line 1208
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v8, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1129
    .end local v8    # "reqId":I
    .end local v9    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 1130
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:I

    .line 1131
    move-object v9, v0

    .line 1132
    .restart local v9    # "request":Lorg/telegram/tgnet/TLObject;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1133
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    goto :goto_1
.end method

.method public loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1213
    if-eqz p1, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 1218
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1219
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v4

    .line 1220
    .local v0, "dialog_id":J
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1221
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    .line 1223
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$12;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$12;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    .line 1262
    .local v3, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public loadMessages(JIIIZIIIIZI)V
    .locals 19
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I

    .prologue
    .line 2814
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V

    .line 2815
    return-void
.end method

.method public loadMessages(JIIIZIIIIZIIIIZ)V
    .locals 23
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I
    .param p13, "first_unread"    # I
    .param p14, "unread_count"    # I
    .param p15, "last_date"    # I
    .param p16, "queryFromServer"    # Z

    .prologue
    .line 2818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load messages in chat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mindate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " guid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " load_type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_message_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " firstUnread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " underad count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryFromServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2819
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    .line 2820
    .local v19, "lower_part":I
    if-nez p6, :cond_0

    if-nez v19, :cond_1

    .line 2821
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V

    .line 2870
    :goto_0
    return-void

    .line 2823
    :cond_1
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 2824
    .local v20, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2825
    const/4 v3, 0x4

    move/from16 v0, p9

    if-ne v0, v3, :cond_3

    .line 2826
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2842
    :cond_2
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 2843
    move/from16 v0, p4

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    .line 2844
    move/from16 v0, p5

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_date:I

    .line 2845
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v22

    new-instance v3, Lorg/telegram/messenger/MessagesController$54;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p1

    move/from16 v10, p8

    move/from16 v11, p13

    move/from16 v12, p10

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/MessagesController$54;-><init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v21

    .line 2868
    .local v21, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, v21

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 2827
    .end local v21    # "reqId":I
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_4

    .line 2828
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2829
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_5

    .line 2830
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2831
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_6

    if-eqz p4, :cond_6

    .line 2832
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2834
    :cond_6
    if-gez v19, :cond_2

    if-eqz p4, :cond_2

    .line 2835
    move/from16 v0, v19

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2836
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2837
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2838
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    goto/16 :goto_1
.end method

.method public loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 10
    .param p1, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1439
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1443
    :cond_1
    if-eqz p1, :cond_2

    .line 1444
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v5

    .line 1448
    .local v0, "dialogId":J
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1451
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request spam button for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1453
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1454
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spam3_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spam button already hidden for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    .end local v0    # "dialogId":J
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    int-to-long v0, v5

    .restart local v0    # "dialogId":J
    goto :goto_1

    .line 1458
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spam_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1459
    .local v2, "hidden":Z
    if-eqz v2, :cond_6

    .line 1460
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1461
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p1, :cond_5

    .line 1462
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1466
    :cond_4
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$17;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$17;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1463
    :cond_5
    if-eqz p2, :cond_4

    .line 1464
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1484
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;-><init>()V

    .line 1485
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;
    if-eqz p1, :cond_8

    .line 1486
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1490
    :cond_7
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$18;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$18;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1487
    :cond_8
    if-eqz p2, :cond_7

    .line 1488
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3
.end method

.method public loadPinnedDialogs(JLjava/util/ArrayList;)V
    .locals 3
    .param p1, "newDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5966
    .local p3, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    if-eqz v1, :cond_0

    .line 6163
    :goto_0
    return-void

    .line 5969
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;-><init>()V

    .line 5970
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$100;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$100;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 12
    .param p1, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "taskId"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 5285
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5336
    :cond_0
    :goto_0
    return-void

    .line 5288
    :cond_1
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 5289
    cmp-long v7, p2, v10

    if-eqz v7, :cond_0

    .line 5290
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    .line 5294
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 5295
    .local v3, "inputPeer":Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->channel_id:I

    .line 5296
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->access_hash:J

    .line 5298
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5300
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 5301
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5303
    cmp-long v7, p2, v10

    if-nez v7, :cond_3

    .line 5304
    const/4 v0, 0x0

    .line 5306
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5307
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5308
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 5312
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 5316
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$95;

    invoke-direct {v8, p0, v4, v5, p1}, Lorg/telegram/messenger/MessagesController$95;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 5309
    .end local v4    # "newTaskId":J
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v2

    .line 5310
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5314
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, p2

    .restart local v4    # "newTaskId":J
    goto :goto_2

    .line 5309
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_3
.end method

.method public markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1996
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v4, p2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1997
    .local v2, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_0

    .line 1998
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1999
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2000
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2001
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 2006
    .end local v0    # "a":I
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 1998
    .restart local v0    # "a":I
    .restart local v1    # "id":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public markDialogAsRead(JIIIZZ)V
    .locals 21
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # I
    .param p4, "max_positive_id"    # I
    .param p5, "max_date"    # I
    .param p6, "was"    # Z
    .param p7, "popup"    # Z

    .prologue
    .line 4163
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    .line 4164
    .local v17, "lower_part":I
    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v15, v4

    .line 4166
    .local v15, "high_id":I
    if-eqz v17, :cond_4

    .line 4167
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    if-ne v15, v3, :cond_1

    .line 4282
    :cond_0
    :goto_0
    return-void

    .line 4170
    :cond_1
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v16

    .line 4172
    .local v16, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    move/from16 v0, p4

    int-to-long v6, v0

    .line 4173
    .local v6, "messageId":J
    move-object/from16 v0, v16

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_3

    .line 4174
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;-><init>()V

    .line 4175
    .local v19, "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    move/from16 v0, v17

    neg-int v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4176
    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->max_id:I

    .line 4177
    move-object/from16 v18, v19

    .line 4178
    .local v18, "req":Lorg/telegram/tgnet/TLObject;
    move/from16 v0, v17

    neg-int v3, v0

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v6, v4

    .line 4185
    .end local v19    # "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 4186
    .local v20, "value":Ljava/lang/Integer;
    if-nez v20, :cond_2

    .line 4187
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 4189
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 4192
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$66;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p7

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$66;-><init>(Lorg/telegram/messenger/MessagesController;JZI)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4223
    const v3, 0x7fffffff

    move/from16 v0, p4

    if-eq v0, v3, :cond_0

    .line 4224
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$67;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$67;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 4180
    .end local v18    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_3
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;-><init>()V

    .line 4181
    .local v19, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4182
    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->max_id:I

    .line 4183
    move-object/from16 v18, v19

    .restart local v18    # "req":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4237
    .end local v6    # "messageId":J
    .end local v16    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v18    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v19    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    :cond_4
    if-eqz p5, :cond_0

    .line 4240
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 4241
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_5

    .line 4242
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;-><init>()V

    .line 4243
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v18

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 4244
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 4245
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 4246
    move/from16 v0, p5

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    .line 4248
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$68;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$68;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4255
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    move/from16 v0, p3

    int-to-long v12, v0

    move-wide/from16 v10, p1

    move/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 4257
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$69;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$69;-><init>(Lorg/telegram/messenger/MessagesController;JIZ)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4277
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    .line 4278
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4279
    .local v10, "serverTime":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v11, v10

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public markMessageAsRead(III)V
    .locals 8
    .param p1, "mid"    # I
    .param p2, "channelId"    # I
    .param p3, "ttl"    # I

    .prologue
    .line 4122
    if-eqz p1, :cond_0

    if-gtz p3, :cond_1

    .line 4138
    :cond_0
    :goto_0
    return-void

    .line 4125
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    .line 4126
    .local v3, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->createTaskForMid(IIIIIZ)V

    .line 4127
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 4128
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4129
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$65;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$65;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v7, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public markMessageAsRead(JJI)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "random_id"    # J
    .param p5, "ttl"    # I

    .prologue
    .line 4141
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-gtz p5, :cond_1

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_1

    .line 4160
    :cond_0
    :goto_0
    return-void

    .line 4144
    :cond_1
    long-to-int v8, p1

    .line 4145
    .local v8, "lower_part":I
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v7, v0

    .line 4146
    .local v7, "high_id":I
    if-nez v8, :cond_0

    .line 4149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 4150
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v6, :cond_0

    .line 4153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4154
    .local v5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4155
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v5, v1}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 4156
    if-lez p5, :cond_0

    .line 4157
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 4158
    .local v2, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v4, 0x0

    .line 4096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4097
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v8, v1

    .line 4098
    .local v8, "messageId":J
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 4099
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    or-long/2addr v8, v2

    .line 4101
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4102
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;I)V

    .line 4103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4104
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gez v1, :cond_1

    .line 4105
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const/high16 v6, -0x80000000

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->markMessageAsRead(JJI)V

    .line 4119
    :goto_0
    return-void

    .line 4107
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 4108
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4109
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$64;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$64;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v7, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public performLogout(Z)V
    .locals 8
    .param p1, "byUser"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 4960
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4961
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4962
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4963
    const-string/jumbo v2, "lastGifLoadTime"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastStickersLoadTime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4964
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4965
    const-string/jumbo v2, "gifhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4967
    if-eqz p1, :cond_0

    .line 4968
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->unregistedPush()V

    .line 4969
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;-><init>()V

    .line 4970
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$87;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4979
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 4980
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4981
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 4982
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 4983
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->deleteAllAppAccounts()V

    .line 4984
    return-void

    .line 4977
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    goto :goto_0
.end method

.method public pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "id"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 2117
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;-><init>()V

    .line 2118
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2119
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->id:I

    .line 2120
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->silent:Z

    .line 2121
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$37;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$37;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2130
    return-void

    .line 2120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z
    .locals 17
    .param p1, "did"    # J
    .param p3, "pin"    # Z
    .param p4, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p5, "taskId"    # J

    .prologue
    .line 5898
    move-wide/from16 v0, p1

    long-to-int v8, v0

    .line 5899
    .local v8, "lower_id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5900
    .local v6, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v6, :cond_0

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v0, p3

    if-ne v13, v0, :cond_2

    .line 5901
    :cond_0
    if-eqz v6, :cond_1

    const/4 v13, 0x1

    .line 5962
    :goto_0
    return v13

    .line 5901
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 5903
    :cond_2
    move/from16 v0, p3

    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5904
    if-eqz p3, :cond_7

    .line 5905
    const/4 v9, 0x0

    .line 5906
    .local v9, "maxPinnedNum":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 5907
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5908
    .local v3, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v13, :cond_6

    .line 5913
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3
    add-int/lit8 v13, v9, 0x1

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5917
    .end local v2    # "a":I
    .end local v9    # "maxPinnedNum":I
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 5918
    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_4

    .line 5919
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5921
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5922
    if-eqz v8, :cond_9

    .line 5923
    const-wide/16 v14, -0x1

    cmp-long v13, p5, v14

    if-eqz v13, :cond_9

    .line 5924
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;-><init>()V

    .line 5925
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    move/from16 v0, p3

    iput-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->pinned:Z

    .line 5926
    if-nez p4, :cond_5

    .line 5927
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    .line 5929
    :cond_5
    move-object/from16 v0, p4

    instance-of v13, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v13, :cond_8

    .line 5930
    const/4 v13, 0x0

    goto :goto_0

    .line 5911
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    .restart local v2    # "a":I
    .restart local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v9    # "maxPinnedNum":I
    :cond_6
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5906
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5915
    .end local v2    # "a":I
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "maxPinnedNum":I
    :cond_7
    const/4 v13, 0x0

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto :goto_2

    .line 5932
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_8
    move-object/from16 v0, p4

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5935
    const-wide/16 v14, 0x0

    cmp-long v13, p5, v14

    if-nez v13, :cond_a

    .line 5936
    const/4 v4, 0x0

    .line 5938
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v13

    add-int/lit8 v13, v13, 0x10

    invoke-direct {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5939
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v13, 0x1

    :try_start_1
    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5940
    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 5941
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 5942
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 5946
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .line 5951
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "newTaskId":J
    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/MessagesController$99;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$99;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v13, v12, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5961
    .end local v10    # "newTaskId":J
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1, v14}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    .line 5962
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 5943
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :catch_0
    move-exception v7

    .line 5944
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5948
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    move-wide/from16 v10, p5

    .restart local v10    # "newTaskId":J
    goto :goto_4

    .line 5943
    .end local v10    # "newTaskId":J
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_5
.end method

.method public processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "chat_id"    # I
    .param p2, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "fromCache"    # Z
    .param p5, "force"    # Z
    .param p6, "byChannelUsers"    # Z
    .param p7, "pinnedMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2367
    .local p3, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p4, :cond_0

    if-lez p1, :cond_0

    if-nez p6, :cond_0

    .line 2368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2370
    :cond_0
    if-eqz p2, :cond_1

    .line 2371
    new-instance v0, Lorg/telegram/messenger/MessagesController$45;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController$45;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2379
    :cond_1
    return-void
.end method

.method public processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3909
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$62;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$62;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4061
    return-void
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3792
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$60;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$60;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3816
    return-void
.end method

.method public processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1894
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$31;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$31;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1912
    return-void
.end method

.method public processLoadedDeleteTask(ILjava/util/ArrayList;I)V
    .locals 2
    .param p1, "taskTime"    # I
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1670
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$23;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$23;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1699
    return-void
.end method

.method public processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    .locals 11
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "loadType"    # I
    .param p6, "resetEnd"    # Z
    .param p7, "migrate"    # Z
    .param p8, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;IIIZZZ)V"
        }
    .end annotation

    .prologue
    .line 3360
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesController$59;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move v5, p4

    move v6, p3

    move/from16 v7, p8

    move/from16 v8, p7

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController$59;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIIZZLjava/util/ArrayList;)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3703
    return-void
.end method

.method public processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
    .locals 22
    .param p1, "messagesRes"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "count"    # I
    .param p5, "max_id"    # I
    .param p6, "offset_date"    # I
    .param p7, "isCache"    # Z
    .param p8, "classGuid"    # I
    .param p9, "first_unread"    # I
    .param p10, "last_message_id"    # I
    .param p11, "unread_count"    # I
    .param p12, "last_date"    # I
    .param p13, "load_type"    # I
    .param p14, "isChannel"    # Z
    .param p15, "isEnd"    # Z
    .param p16, "loadIndex"    # I
    .param p17, "queryFromServer"    # Z

    .prologue
    .line 2927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processLoadedMessages size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " load_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_message_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstUnread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " underad count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queryFromServer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2928
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesController$56;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p7

    move/from16 v9, p4

    move/from16 v10, p13

    move/from16 v11, p17

    move/from16 v12, p9

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p10

    move/from16 v17, p14

    move/from16 v18, p16

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p15

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/MessagesController$56;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3079
    return-void
.end method

.method public processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V
    .locals 9
    .param p1, "res"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .param p2, "did"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "max_id"    # J
    .param p7, "fromCache"    # Z
    .param p8, "classGuid"    # I

    .prologue
    .line 1972
    if-nez p7, :cond_1

    .line 1973
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1974
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    .line 1979
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$34;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$34;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZIIII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1986
    :goto_0
    return-void

    .line 1975
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1976
    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto :goto_0
.end method

.method protected processNewChannelDifferenceParams(III)V
    .locals 10
    .param p1, "pts"    # I
    .param p2, "pts_count"    # I
    .param p3, "channelId"    # I

    .prologue
    .line 1519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processNewChannelDifferenceParams pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channeldId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1520
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    neg-int v7, p3

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1521
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1525
    .local v1, "channelPts":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 1526
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1527
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1528
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1530
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, p2

    if-ne v6, p1, :cond_4

    .line 1533
    const-string/jumbo v6, "APPLY CHANNEL PTS"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1534
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto :goto_0

    .line 1536
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 1537
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1538
    .local v5, "updatesStartWaitTime":Ljava/lang/Long;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1539
    .local v3, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v3, :cond_5

    .line 1540
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1542
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-gtz v6, :cond_9

    .line 1543
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ADD CHANNEL UPDATE TO QUEUE pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1544
    if-nez v5, :cond_7

    .line 1545
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    :cond_7
    new-instance v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1548
    .local v4, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p1, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1549
    iput p2, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1550
    iput p3, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->chat_id:I

    .line 1551
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1552
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v0, :cond_8

    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1558
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    .end local v4    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_9
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0
.end method

.method protected processNewDifferenceParams(IIII)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "pts_count"    # I

    .prologue
    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNewDifferenceParams seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1565
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1566
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    add-int/2addr v1, p4

    if-ne v1, p2, :cond_3

    .line 1567
    const-string/jumbo v1, "APPLY PTS"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1568
    sput p2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 1569
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1585
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 1586
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_7

    .line 1587
    const-string/jumbo v1, "APPLY SEQ"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1588
    sput p1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 1589
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 1590
    sput p3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 1592
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1607
    :cond_2
    :goto_1
    return-void

    .line 1570
    :cond_3
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-eq v1, p2, :cond_0

    .line 1571
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 1572
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADD UPDATE TO QUEUE pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1573
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 1576
    :cond_5
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1577
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1578
    iput p4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1579
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1581
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_0

    .line 1593
    :cond_7
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-eq v1, p1, :cond_2

    .line 1594
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_8

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 1595
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADD UPDATE TO QUEUE seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1596
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 1599
    :cond_9
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1600
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    iput p1, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;->seq:I

    .line 1601
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1603
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_1
.end method

.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 90
    .param p4, "fromGetDifference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 6822
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chatsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6823
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 6824
    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessagesController$110;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$110;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6832
    :cond_1
    const/4 v4, 0x1

    .line 8086
    :goto_0
    return v4

    .line 6834
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 6836
    .local v46, "currentTime":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6837
    .local v11, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v89, Ljava/util/HashMap;

    invoke-direct/range {v89 .. v89}, Ljava/util/HashMap;-><init>()V

    .line 6838
    .local v89, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    .line 6839
    .local v74, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 6840
    .local v63, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6841
    .local v12, "editingMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 6842
    .local v16, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 6843
    .local v19, "markAsReadMessagesInbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 6844
    .local v20, "markAsReadMessagesOutbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 6845
    .local v22, "markAsReadMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 6846
    .local v21, "markAsReadEncrypted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 6847
    .local v23, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v72, 0x0

    .line 6848
    .local v72, "printChanged":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6849
    .local v15, "chatInfoToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipants;>;"
    new-instance v83, Ljava/util/ArrayList;

    invoke-direct/range {v83 .. v83}, Ljava/util/ArrayList;-><init>()V

    .line 6850
    .local v83, "updatesOnMainThread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 6851
    .local v76, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6853
    .local v14, "contactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v41, 0x1

    .line 6856
    .local v41, "checkForUsers":Z
    if-eqz p2, :cond_3

    .line 6857
    new-instance v86, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v86 .. v86}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6858
    .local v86, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v30, 0x0

    .local v30, "a":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    .line 6859
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6860
    .local v84, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v84

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    move-object/from16 v1, v84

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6858
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 6863
    .end local v30    # "a":I
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    const/16 v41, 0x0

    .line 6864
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v86, v0

    .line 6866
    .restart local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    if-eqz p3, :cond_5

    .line 6867
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6868
    .local v40, "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 6869
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6870
    .local v38, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6868
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 6873
    .end local v30    # "a":I
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_5
    const/16 v41, 0x0

    .line 6874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v40, v0

    .line 6876
    .restart local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 6877
    const/16 v41, 0x0

    .line 6880
    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_9

    .line 6881
    :cond_8
    new-instance v4, Lorg/telegram/messenger/MessagesController$111;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$111;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6890
    :cond_9
    const/16 v58, 0x0

    .line 6892
    .local v58, "interfaceUpdateMask":I
    const/16 v36, 0x0

    .local v36, "c":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_a6

    .line 6893
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6894
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process update "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6895
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_a

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_31

    .line 6897
    :cond_a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_f

    .line 6898
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6908
    .local v61, "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b
    :goto_4
    const/16 v38, 0x0

    .line 6909
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v39, 0x0

    .line 6910
    .local v39, "chat_id":I
    const/16 v85, 0x0

    .line 6911
    .local v85, "user_id":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_11

    .line 6912
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v39, v0

    .line 6918
    :cond_c
    :goto_5
    if-eqz v39, :cond_e

    .line 6919
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6920
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_d

    .line 6921
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6923
    :cond_d
    if-nez v38, :cond_e

    .line 6924
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6925
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6928
    :cond_e
    if-eqz v41, :cond_20

    .line 6929
    if-eqz v39, :cond_13

    .line 6930
    if-nez v38, :cond_13

    .line 6931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not found chat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6932
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_f
    move-object/from16 v4, v80

    .line 6900
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6901
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_10

    .line 6902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6904
    :cond_10
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_b

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 6905
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_4

    .line 6913
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v85    # "user_id":I
    :cond_11
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_12

    .line 6914
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v39, v0

    goto/16 :goto_5

    .line 6915
    :cond_12
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v4, :cond_c

    .line 6916
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v85, v0

    goto/16 :goto_5

    .line 6936
    :cond_13
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, 0x3

    .line 6937
    .local v44, "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_6
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_20

    .line 6938
    const/16 v31, 0x0

    .line 6939
    .local v31, "allowMin":Z
    if-eqz v30, :cond_14

    .line 6940
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1a

    .line 6941
    move-object/from16 v0, v61

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v85, v0

    .line 6942
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_14

    .line 6943
    const/16 v31, 0x1

    .line 6952
    :cond_14
    :goto_7
    if-lez v85, :cond_1f

    .line 6953
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6954
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_15

    if-nez v31, :cond_16

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_16

    .line 6955
    :cond_15
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6957
    :cond_16
    if-eqz v84, :cond_17

    if-nez v31, :cond_19

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_19

    .line 6958
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6959
    if-eqz v84, :cond_18

    if-nez v31, :cond_18

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_18

    .line 6960
    const/16 v84, 0x0

    .line 6962
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6964
    :cond_19
    if-nez v84, :cond_1e

    .line 6965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not found user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6966
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6945
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1a
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_1c

    .line 6946
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    move/from16 v85, v0

    :goto_8
    goto :goto_7

    :cond_1b
    const/16 v85, 0x0

    goto :goto_8

    .line 6948
    :cond_1c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    add-int/lit8 v6, v30, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6949
    .local v51, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1d

    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    :goto_9
    goto/16 :goto_7

    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_1d
    const/16 v85, 0x0

    goto :goto_9

    .line 6968
    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1e
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_1f

    .line 6969
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6970
    or-int/lit8 v58, v58, 0x4

    .line 6972
    move-object/from16 v0, v84

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 6937
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    .line 6985
    .end local v30    # "a":I
    .end local v31    # "allowMin":Z
    .end local v44    # "count":I
    :cond_20
    if-eqz v38, :cond_21

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_21

    .line 6986
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6989
    :cond_21
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_24

    .line 6991
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    if-eqz v4, :cond_23

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v4, v6, :cond_23

    .line 6892
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v85    # "user_id":I
    :cond_22
    :goto_a
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_3

    .line 6994
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v85    # "user_id":I
    :cond_23
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6995
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_2a

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_2a

    .line 6996
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 6997
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 7003
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_24
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7004
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7005
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 7006
    .local v43, "clientUserId":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_2b

    .line 7007
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 7017
    :goto_b
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7018
    .local v75, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_c
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7019
    .local v87, "value":Ljava/lang/Integer;
    if-nez v87, :cond_25

    .line 7020
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7021
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    :cond_25
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_2f

    if-eqz v38, :cond_26

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_26
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_2f

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7024
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_27

    .line 7025
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7026
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7027
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7030
    :cond_27
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7031
    .local v69, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_30

    .line 7032
    or-int/lit8 v58, v58, 0x8

    .line 7036
    :cond_28
    :goto_e
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7037
    .local v32, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_29

    .line 7038
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7039
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7041
    :cond_29
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7042
    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 7043
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 6998
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v43    # "clientUserId":I
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2a
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_24

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_24

    goto/16 :goto_a

    .line 7008
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v43    # "clientUserId":I
    :cond_2b
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_2c

    .line 7009
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_b

    .line 7011
    :cond_2c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v0, v43

    if-ne v4, v0, :cond_2d

    .line 7012
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7014
    :cond_2d
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_b

    .line 7017
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_c

    .line 7023
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 7033
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_30
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_28

    .line 7034
    or-int/lit8 v58, v58, 0x10

    goto/16 :goto_e

    .line 7045
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v85    # "user_id":I
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_31
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-eqz v4, :cond_32

    .line 7046
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_f
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_22

    .line 7047
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v54, v0

    .line 7048
    .local v54, "id":J
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7046
    add-int/lit8 v30, v30, 0x1

    goto :goto_f

    .line 7050
    .end local v30    # "a":I
    .end local v54    # "id":J
    :cond_32
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v4, :cond_33

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-eqz v4, :cond_38

    .line 7053
    :cond_33
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-eqz v4, :cond_36

    move-object/from16 v4, v80

    .line 7054
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 7055
    .local v71, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_35

    .line 7056
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7057
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7062
    .local v48, "dialog_id":J
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7074
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_11
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7075
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_34

    .line 7076
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7078
    :cond_34
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 7059
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_35
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7060
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_10

    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_36
    move-object/from16 v4, v80

    .line 7064
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 7065
    .restart local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_37

    .line 7066
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7067
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7072
    .restart local v48    # "dialog_id":J
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 7069
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_37
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7070
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_12

    .line 7079
    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_38
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-eqz v4, :cond_3a

    .line 7080
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7081
    .local v35, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_39

    .line 7082
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 7083
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7085
    :cond_39
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    .line 7086
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    if-nez v4, :cond_3b

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    if-eqz v4, :cond_45

    .line 7087
    :cond_3b
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v4, v6, :cond_22

    .line 7088
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 7089
    .local v78, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v4, v78, v6

    if-nez v4, :cond_3c

    .line 7090
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 7092
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 7093
    .local v33, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    if-eqz v4, :cond_40

    .line 7094
    if-eqz v33, :cond_3e

    .line 7095
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_13
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_3d

    .line 7096
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7097
    .local v73, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v73

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_3f

    .line 7098
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7099
    const/16 v72, 0x1

    .line 7103
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3d
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 7104
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7133
    .end local v30    # "a":I
    :cond_3e
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7135
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    goto/16 :goto_a

    .line 7095
    .restart local v30    # "a":I
    .restart local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3f
    add-int/lit8 v30, v30, 0x1

    goto :goto_13

    .line 7108
    .end local v30    # "a":I
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_40
    if-nez v33, :cond_41

    .line 7109
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 7110
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7112
    :cond_41
    const/16 v52, 0x0

    .line 7113
    .local v52, "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7114
    .local v77, "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_42

    .line 7115
    const/16 v52, 0x1

    .line 7116
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7117
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_43

    .line 7118
    const/16 v72, 0x1

    .line 7120
    :cond_43
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7124
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_44
    if-nez v52, :cond_3e

    .line 7125
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 7126
    .local v67, "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 7127
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7128
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7129
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7130
    const/16 v72, 0x1

    goto/16 :goto_14

    .line 7145
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v52    # "exist":Z
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v78    # "uid":J
    :cond_45
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    if-eqz v4, :cond_46

    .line 7146
    or-int/lit8 v58, v58, 0x20

    .line 7147
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7148
    :cond_46
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v4, :cond_47

    .line 7149
    or-int/lit8 v58, v58, 0x4

    .line 7150
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7151
    :cond_47
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_48

    .line 7152
    or-int/lit8 v58, v58, 0x1

    .line 7153
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7154
    :cond_48
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v4, :cond_49

    .line 7155
    or-int/lit8 v58, v58, 0x2

    .line 7156
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 7157
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7158
    :cond_49
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_4a

    .line 7159
    move/from16 v0, v58

    or-int/lit16 v0, v0, 0x400

    move/from16 v58, v0

    .line 7160
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7161
    :cond_4a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    if-eqz v4, :cond_4c

    .line 7162
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z

    move-result v4

    if-nez v4, :cond_22

    .line 7163
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 7164
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 7165
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 7166
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7167
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 7168
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 7169
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 7170
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 7171
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7172
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7173
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 7175
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7176
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7177
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7178
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_4b

    .line 7179
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7180
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7182
    :cond_4b
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7184
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_4c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    if-eqz v4, :cond_50

    .line 7185
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    if-eqz v4, :cond_4e

    .line 7186
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 7187
    .local v57, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4d

    .line 7188
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7190
    :cond_4d
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 7191
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7194
    .end local v57    # "idx":I
    :cond_4e
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 7195
    .restart local v57    # "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4f

    .line 7196
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7198
    :cond_4f
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 7199
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7202
    .end local v57    # "idx":I
    :cond_50
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    if-nez v4, :cond_22

    .line 7204
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v4, :cond_52

    .line 7205
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    move-object/from16 v4, v80

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v45

    .line 7206
    .local v45, "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v45, :cond_22

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 7207
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    move/from16 v42, v0

    .line 7208
    .local v42, "cid":I
    move/from16 v0, v42

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 7209
    .restart local v78    # "uid":J
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7210
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_51

    .line 7211
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7212
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7214
    :cond_51
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_15
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_22

    .line 7215
    move-object/from16 v0, v45

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lorg/telegram/tgnet/TLRPC$Message;

    .line 7216
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7217
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7218
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7219
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7220
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7214
    add-int/lit8 v30, v30, 0x1

    goto :goto_15

    .line 7223
    .end local v30    # "a":I
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "cid":I
    .end local v45    # "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v78    # "uid":J
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_52
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    if-eqz v4, :cond_57

    .line 7224
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v50

    .line 7225
    .local v50, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v50, :cond_22

    .line 7226
    move-object/from16 v0, v50

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v80

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    .line 7227
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 7228
    .restart local v78    # "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 7229
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-nez v33, :cond_53

    .line 7230
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 7231
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7233
    :cond_53
    const/16 v52, 0x0

    .line 7234
    .restart local v52    # "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7235
    .restart local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_54

    .line 7236
    const/16 v52, 0x1

    .line 7237
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7238
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7242
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_55
    if-nez v52, :cond_56

    .line 7243
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 7244
    .restart local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 7245
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 7246
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 7247
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7248
    const/16 v72, 0x1

    .line 7250
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 7252
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v50    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v52    # "exist":Z
    .end local v78    # "uid":J
    :cond_57
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    if-eqz v4, :cond_58

    .line 7253
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_date:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7254
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v76

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7255
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_58
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    if-eqz v4, :cond_59

    .line 7256
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x0

    move-object/from16 v0, v80

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->inviter_id:I

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_a

    .line 7257
    :cond_59
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    if-eqz v4, :cond_5a

    .line 7258
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_a

    .line 7259
    :cond_5a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    if-nez v4, :cond_5b

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    if-eqz v4, :cond_5c

    .line 7260
    :cond_5b
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    goto/16 :goto_a

    .line 7261
    :cond_5c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    if-eqz v4, :cond_5d

    .line 7262
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    move-object/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_a

    .line 7263
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_5d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    if-eqz v4, :cond_5f

    move-object/from16 v53, v80

    .line 7264
    check-cast v53, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .line 7265
    .local v53, "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    move-object/from16 v0, v53

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v4, :cond_5e

    .line 7266
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 7267
    .local v56, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v53

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7268
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    .line 7272
    .end local v56    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_16
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$114;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$114;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 7270
    :cond_5e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteBlockedUser(I)V

    goto :goto_16

    .line 7290
    .end local v53    # "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    :cond_5f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v4, :cond_60

    .line 7291
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7292
    :cond_60
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    if-eqz v4, :cond_66

    move-object/from16 v68, v80

    .line 7293
    check-cast v68, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .line 7294
    .local v68, "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    move-object/from16 v0, v68

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    if-eqz v4, :cond_61

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    if-eqz v4, :cond_61

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 7295
    new-instance v4, Lorg/telegram/messenger/MessagesController$115;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$115;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7302
    :cond_61
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_22

    .line 7303
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 7304
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 7305
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7306
    const/4 v4, 0x1

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 7307
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 7308
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    if-eqz v4, :cond_65

    .line 7309
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 7313
    :goto_17
    const v4, 0xbdb28

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 7314
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7315
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7316
    const-wide/32 v6, 0xbdb28

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 7317
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_62

    .line 7318
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 7319
    move-object/from16 v0, v66

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 7321
    :cond_62
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 7322
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_63

    .line 7323
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 7326
    :cond_63
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7327
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7328
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7329
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_64

    .line 7330
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7331
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7333
    :cond_64
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7334
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7311
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    goto/16 :goto_17

    .line 7336
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v68    # "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    :cond_66
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v4, :cond_67

    .line 7337
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7338
    :cond_67
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v4, :cond_68

    .line 7339
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7340
    :cond_68
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v4, :cond_69

    .line 7341
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7342
    :cond_69
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-eqz v4, :cond_6a

    .line 7343
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 7344
    :cond_6a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v4, :cond_6b

    .line 7345
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 7346
    :cond_6b
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    if-eqz v4, :cond_74

    .line 7347
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_6c

    .line 7348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7350
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 7351
    .local v37, "channelPts":Ljava/lang/Integer;
    if-nez v37, :cond_71

    .line 7352
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 7353
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_72

    .line 7354
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7355
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v38, :cond_6d

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_6e

    .line 7356
    :cond_6d
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7358
    :cond_6e
    if-eqz v38, :cond_6f

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_70

    .line 7359
    :cond_6f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7360
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7362
    :cond_70
    if-eqz v38, :cond_71

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v4, :cond_71

    .line 7363
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 7369
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_71
    :goto_18
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_22

    .line 7370
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_73

    .line 7371
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_22

    .line 7372
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_a

    .line 7366
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 7375
    :cond_73
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_a

    .line 7378
    .end local v37    # "channelPts":Ljava/lang/Integer;
    :cond_74
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-nez v4, :cond_75

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    if-eqz v4, :cond_78

    .line 7379
    :cond_75
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v0, v4

    move-wide/from16 v64, v0

    .line 7380
    .local v64, "message_id":J
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v64, v64, v6

    .line 7381
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7384
    .restart local v48    # "dialog_id":J
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-eqz v4, :cond_77

    .line 7385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7386
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7392
    :goto_19
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7393
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_76

    .line 7394
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7396
    :cond_76
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 7388
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7389
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 7397
    .end local v48    # "dialog_id":J
    .end local v64    # "message_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_78
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-eqz v4, :cond_7b

    .line 7398
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_79

    .line 7399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7401
    :cond_79
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7402
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_7a

    .line 7403
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 7404
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7406
    :cond_7a
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    .line 7407
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7b
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v4, :cond_7d

    .line 7408
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7c

    .line 7409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7411
    :cond_7c
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7412
    :cond_7d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    if-eqz v4, :cond_80

    .line 7413
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7e

    .line 7414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7e
    move-object/from16 v81, v80

    .line 7416
    check-cast v81, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .line 7417
    .local v81, "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseIntArray;

    .line 7418
    .local v34, "array":Landroid/util/SparseIntArray;
    if-nez v34, :cond_7f

    .line 7419
    new-instance v34, Landroid/util/SparseIntArray;

    .end local v34    # "array":Landroid/util/SparseIntArray;
    invoke-direct/range {v34 .. v34}, Landroid/util/SparseIntArray;-><init>()V

    .line 7420
    .restart local v34    # "array":Landroid/util/SparseIntArray;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7422
    :cond_7f
    move-object/from16 v0, v81

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;->id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->views:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_a

    .line 7423
    .end local v34    # "array":Landroid/util/SparseIntArray;
    .end local v81    # "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    :cond_80
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    if-eqz v4, :cond_82

    .line 7424
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x2

    move-object/from16 v0, v80

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->is_admin:Z

    if-eqz v8, :cond_81

    const/4 v8, 0x1

    :goto_1a
    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_a

    :cond_81
    const/4 v8, 0x0

    goto :goto_1a

    .line 7425
    :cond_82
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v4, :cond_83

    .line 7426
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7427
    :cond_83
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v4, :cond_84

    .line 7428
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7429
    :cond_84
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v4, :cond_85

    .line 7430
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7431
    :cond_85
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v4, :cond_86

    .line 7432
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7433
    :cond_86
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v4, :cond_87

    .line 7434
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7435
    :cond_87
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v4, :cond_88

    .line 7436
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7437
    :cond_88
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v4, :cond_89

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_a0

    .line 7439
    :cond_89
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 7440
    .restart local v43    # "clientUserId":I
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_93

    .line 7441
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7442
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7443
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_8a

    .line 7444
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7446
    :cond_8a
    if-nez v38, :cond_8b

    .line 7447
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7448
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7450
    :cond_8b
    if-eqz v38, :cond_8c

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_8c

    .line 7451
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 7461
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8c
    :goto_1b
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_8d

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_8d

    .line 7462
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7464
    :cond_8d
    if-nez p4, :cond_95

    .line 7465
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 7466
    .restart local v44    # "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_1c
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_95

    .line 7467
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 7468
    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_94

    .line 7469
    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    .line 7470
    .restart local v85    # "user_id":I
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 7471
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_8e

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8f

    .line 7472
    :cond_8e
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7474
    :cond_8f
    if-eqz v84, :cond_90

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_92

    .line 7475
    :cond_90
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7476
    if-eqz v84, :cond_91

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_91

    .line 7477
    const/16 v84, 0x0

    .line 7479
    :cond_91
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 7481
    :cond_92
    if-nez v84, :cond_94

    .line 7482
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 7454
    .end local v30    # "a":I
    .end local v44    # "count":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_93
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7455
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_8c

    .line 7456
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7457
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7458
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_1b

    .line 7466
    .restart local v30    # "a":I
    .restart local v44    # "count":I
    :cond_94
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1c

    .line 7488
    .end local v30    # "a":I
    .end local v44    # "count":I
    :cond_95
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_9b

    .line 7489
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 7499
    :goto_1d
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7500
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1e
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7501
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_96

    .line 7502
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7503
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7505
    :cond_96
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_9f

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7506
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_97

    .line 7507
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7508
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7509
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7511
    :cond_97
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_99

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_98

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_99

    .line 7512
    :cond_98
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 7513
    const-string/jumbo v4, ""

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 7516
    :cond_99
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7518
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7520
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7521
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_9a

    .line 7522
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7523
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7525
    :cond_9a
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7490
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_9b
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_9c

    .line 7491
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1d

    .line 7493
    :cond_9c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_9d

    .line 7494
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7496
    :cond_9d
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1d

    .line 7499
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_1e

    .line 7505
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_9f
    const/4 v4, 0x0

    goto/16 :goto_1f

    .line 7526
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a0
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    if-eqz v4, :cond_a2

    .line 7527
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_a1

    .line 7528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a1
    move-object/from16 v82, v80

    .line 7530
    check-cast v82, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .line 7531
    .local v82, "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v82

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;->id:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    goto/16 :goto_a

    .line 7532
    .end local v82    # "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    :cond_a2
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v4, :cond_a3

    .line 7533
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7534
    :cond_a3
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v4, :cond_a4

    .line 7535
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 7536
    :cond_a4
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;

    if-eqz v4, :cond_a5

    .line 7537
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;)V

    goto/16 :goto_a

    .line 7538
    :cond_a5
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;

    if-eqz v4, :cond_22

    .line 7539
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale()V

    goto/16 :goto_a

    .line 7542
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a6
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 7543
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a7
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7544
    .local v70, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 7545
    .local v60, "key":Ljava/lang/Long;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/ArrayList;

    .line 7546
    .local v88, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 7547
    const/16 v72, 0x1

    goto :goto_20

    .line 7552
    .end local v60    # "key":Ljava/lang/Long;
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v88    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_a8
    if-eqz v72, :cond_a9

    .line 7553
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 7556
    :cond_a9
    move/from16 v59, v58

    .line 7557
    .local v59, "interfaceUpdateMaskFinal":I
    move/from16 v13, v72

    .line 7559
    .local v13, "printChangedArg":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_aa

    .line 7560
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v14, v0}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 7563
    :cond_aa
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 7564
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$116;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$116;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7577
    :cond_ab
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ac

    .line 7578
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 7579
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v9

    move-object/from16 v5, v63

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 7581
    :cond_ac
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 7582
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_21
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7583
    .restart local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 7584
    .local v5, "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/ArrayList;

    .line 7585
    .local v62, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_22
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_ad

    .line 7586
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7585
    add-int/lit8 v30, v30, 0x1

    goto :goto_22

    .line 7588
    :cond_ad
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    goto :goto_21

    .line 7592
    .end local v5    # "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    .end local v30    # "a":I
    .end local v62    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_ae
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_af

    .line 7593
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    .line 7596
    :cond_af
    new-instance v6, Lorg/telegram/messenger/MessagesController$117;

    move-object/from16 v7, p0

    move/from16 v8, v59

    move-object/from16 v9, v83

    move-object/from16 v10, v89

    invoke-direct/range {v6 .. v16}, Lorg/telegram/messenger/MessagesController$117;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7958
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v17, Lorg/telegram/messenger/MessagesController$118;

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Lorg/telegram/messenger/MessagesController$118;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 8054
    invoke-virtual/range {v89 .. v89}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 8055
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    .line 8057
    :cond_b0
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 8058
    :cond_b1
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_b2

    .line 8059
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 8061
    :cond_b2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V

    .line 8063
    :cond_b3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 8064
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;I)V

    .line 8066
    :cond_b4
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_b5

    .line 8067
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_23
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_b5

    .line 8068
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 8069
    .local v60, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 8070
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$119;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v60

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$119;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 8067
    add-int/lit8 v30, v30, 0x1

    goto :goto_23

    .line 8079
    .end local v30    # "a":I
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "key":I
    :cond_b5
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b6

    .line 8080
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_24
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_b6

    .line 8081
    move-object/from16 v0, v76

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .line 8082
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v24

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->chat_id:I

    move/from16 v25, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->max_date:I

    move/from16 v26, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->date:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 8080
    add-int/lit8 v30, v30, 0x1

    goto :goto_24

    .line 8086
    .end local v30    # "a":I
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    :cond_b6
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V
    .locals 53
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "fromQueue"    # Z

    .prologue
    .line 6331
    const/16 v32, 0x0

    .line 6332
    .local v32, "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v33, 0x0

    .line 6333
    .local v33, "needGetDiff":Z
    const/16 v34, 0x0

    .line 6334
    .local v34, "needReceivedQueue":Z
    const/16 v45, 0x0

    .line 6335
    .local v45, "updateStatus":Z
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    if-eqz v4, :cond_1

    .line 6336
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6337
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6338
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6781
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    .line 6782
    if-nez p2, :cond_64

    .line 6783
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6784
    .local v26, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_63

    .line 6785
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 6786
    .local v25, "key":Ljava/lang/Integer;
    if-eqz v32, :cond_62

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 6787
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 6784
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 6339
    .end local v10    # "a":I
    .end local v25    # "key":Ljava/lang/Integer;
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_2b

    .line 6340
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-eqz v4, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->from_id:I

    move/from16 v51, v0

    .line 6341
    .local v51, "user_id":I
    :goto_3
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6342
    .local v48, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v49, 0x0

    .line 6343
    .local v49, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v50, 0x0

    .line 6344
    .local v50, "user3":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v16, 0x0

    .line 6346
    .local v16, "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v48, :cond_3

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_5

    .line 6347
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6348
    if-eqz v48, :cond_4

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_4

    .line 6349
    const/16 v48, 0x0

    .line 6351
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6354
    :cond_5
    const/16 v31, 0x0

    .line 6355
    .local v31, "needFwdUser":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_9

    .line 6356
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v4, :cond_7

    .line 6357
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6358
    if-nez v49, :cond_6

    .line 6359
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6360
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6362
    :cond_6
    const/16 v31, 0x1

    .line 6364
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    if-eqz v4, :cond_9

    .line 6365
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6366
    if-nez v16, :cond_8

    .line 6367
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6368
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6370
    :cond_8
    const/16 v31, 0x1

    .line 6374
    :cond_9
    const/16 v30, 0x0

    .line 6375
    .local v30, "needBotUser":Z
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    if-eqz v4, :cond_b

    .line 6376
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6377
    if-nez v50, :cond_a

    .line 6378
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6379
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6381
    :cond_a
    const/16 v30, 0x1

    .line 6385
    :cond_b
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_14

    .line 6386
    if-eqz v48, :cond_d

    if-eqz v31, :cond_c

    if-nez v49, :cond_c

    if-eqz v16, :cond_d

    :cond_c
    if-eqz v30, :cond_13

    if-nez v50, :cond_13

    :cond_d
    const/16 v29, 0x1

    .line 6395
    .local v29, "missingData":Z
    :goto_4
    if-nez v29, :cond_10

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 6396
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_10

    .line 6397
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6398
    .local v21, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1a

    .line 6399
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v21    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v42, v0

    .line 6400
    .local v42, "uid":I
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6401
    .local v22, "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1a

    .line 6402
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6403
    if-eqz v22, :cond_f

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_f

    .line 6404
    const/16 v22, 0x0

    .line 6406
    :cond_f
    if-nez v22, :cond_19

    .line 6407
    const/16 v29, 0x1

    .line 6415
    .end local v10    # "a":I
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_10
    if-eqz v48, :cond_11

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_11

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_11

    .line 6416
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6417
    const/16 v45, 0x1

    .line 6419
    move-object/from16 v0, v48

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 6431
    :cond_11
    if-eqz v29, :cond_1b

    .line 6432
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6340
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    move/from16 v51, v0

    goto/16 :goto_3

    .line 6386
    .restart local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v30    # "needBotUser":Z
    .restart local v31    # "needFwdUser":Z
    .restart local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v51    # "user_id":I
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 6388
    :cond_14
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6389
    .local v19, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v19, :cond_15

    .line 6390
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6391
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6393
    :cond_15
    if-eqz v19, :cond_17

    if-eqz v48, :cond_17

    if-eqz v31, :cond_16

    if-nez v49, :cond_16

    if-eqz v16, :cond_17

    :cond_16
    if-eqz v30, :cond_18

    if-nez v50, :cond_18

    :cond_17
    const/16 v29, 0x1

    .restart local v29    # "missingData":Z
    :goto_6
    goto/16 :goto_4

    .end local v29    # "missingData":Z
    :cond_18
    const/16 v29, 0x0

    goto :goto_6

    .line 6410
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v10    # "a":I
    .restart local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v29    # "missingData":Z
    .restart local v42    # "uid":I
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6396
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 6434
    .end local v10    # "a":I
    :cond_1b
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v4, v6, :cond_27

    .line 6435
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6436
    .local v27, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 6437
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v20

    .line 6438
    .local v20, "clientUserId":I
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_21

    .line 6439
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-eqz v4, :cond_20

    .line 6440
    move/from16 v0, v20

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6444
    :goto_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6445
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v51

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6446
    move/from16 v0, v51

    int-to-long v6, v0

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 6454
    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 6455
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 6456
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6457
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 6458
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6459
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 6460
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6461
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 6462
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 6463
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6464
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to_msg_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 6465
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6467
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    .line 6468
    .local v39, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_9
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 6469
    .local v52, "value":Ljava/lang/Integer;
    if-nez v52, :cond_1c

    .line 6470
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 6471
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6473
    :cond_1c
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v27

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ge v4, v6, :cond_23

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6475
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    move/from16 v0, v20

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1d

    .line 6476
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6477
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6478
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6481
    :cond_1d
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 6482
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6483
    .local v35, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 6484
    .local v36, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6486
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6487
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_25

    .line 6488
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v37, 0x1

    .line 6489
    .local v37, "printUpdate":Z
    :goto_b
    if-eqz v37, :cond_1e

    .line 6490
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6492
    :cond_1e
    new-instance v4, Lorg/telegram/messenger/MessagesController$105;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v51

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$105;-><init>(Lorg/telegram/messenger/MessagesController;ZILjava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6519
    :goto_c
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 6520
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$107;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$107;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6532
    :cond_1f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    .line 6442
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_20
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_7

    .line 6448
    :cond_21
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6449
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6450
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 6451
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    goto/16 :goto_8

    .line 6467
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    goto/16 :goto_9

    .line 6473
    .restart local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v52    # "value":Ljava/lang/Integer;
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 6488
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .restart local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_24
    const/16 v37, 0x0

    goto :goto_b

    .line 6503
    :cond_25
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v37

    .line 6504
    .restart local v37    # "printUpdate":Z
    if-eqz v37, :cond_26

    .line 6505
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6507
    :cond_26
    new-instance v4, Lorg/telegram/messenger/MessagesController$106;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$106;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 6533
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v20    # "clientUserId":I
    .end local v27    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_27
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-eq v4, v6, :cond_0

    .line 6534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff short message, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6535
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2a

    .line 6536
    :cond_28
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_29

    .line 6537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6539
    :cond_29
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6540
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6542
    :cond_2a
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6546
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_2b
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-nez v4, :cond_2c

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v4, :cond_5e

    .line 6547
    :cond_2c
    const/16 v28, 0x0

    .line 6548
    .local v28, "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_32

    .line 6549
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6550
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v4, :cond_31

    .line 6551
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_31

    .line 6552
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v23

    .line 6553
    .local v23, "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v23, :cond_2d

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_2e

    .line 6554
    :cond_2d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 6555
    .local v15, "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6556
    move-object/from16 v23, v15

    .line 6558
    .end local v15    # "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2e
    if-eqz v23, :cond_2f

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_31

    .line 6559
    :cond_2f
    if-nez v28, :cond_30

    .line 6560
    new-instance v28, Ljava/util/HashMap;

    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 6562
    .restart local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_30
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6548
    .end local v23    # "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 6567
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_32
    if-eqz v28, :cond_33

    .line 6568
    const/4 v10, 0x0

    :goto_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_33

    .line 6569
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6570
    .local v43, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_34

    .line 6571
    check-cast v43, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v17, v0

    .line 6572
    .local v17, "channelId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 6573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff because of min channel "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6574
    const/16 v33, 0x1

    .line 6580
    .end local v17    # "channelId":I
    :cond_33
    if-nez v33, :cond_0

    .line 6581
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 6582
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6583
    const/4 v10, 0x0

    :goto_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    .line 6584
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6585
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_3c

    .line 6586
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6587
    .local v46, "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6588
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6589
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6590
    add-int/lit8 v13, v10, 0x1

    .local v13, "b":I
    :goto_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_35

    .line 6591
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6592
    .local v44, "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_35

    .line 6593
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6594
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6595
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6596
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6597
    add-int/lit8 v13, v13, -0x1

    .line 6590
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 6568
    .end local v13    # "b":I
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 6602
    .restart local v13    # "b":I
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_35
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_38

    .line 6603
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_37

    .line 6604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff inner TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6605
    const/16 v33, 0x1

    .line 6732
    :cond_36
    :goto_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6733
    add-int/lit8 v10, v10, -0x1

    .line 6583
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 6607
    :cond_37
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_11

    .line 6609
    :cond_38
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 6610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6611
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3b

    .line 6612
    :cond_39
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3a

    .line 6613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6615
    :cond_3a
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6616
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6618
    :cond_3b
    const/16 v33, 0x1

    goto/16 :goto_11

    .line 6621
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    .line 6622
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6623
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6624
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6625
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_12
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_3d

    .line 6626
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6627
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3d

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    if-ne v4, v6, :cond_3d

    .line 6628
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6629
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6630
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6631
    add-int/lit8 v13, v13, -0x1

    .line 6625
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 6636
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_3d
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-eqz v4, :cond_3e

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v46

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_3f

    .line 6637
    :cond_3e
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6638
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 6639
    const/16 v34, 0x1

    goto/16 :goto_11

    .line 6640
    :cond_3f
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 6641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get diff, qts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6642
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_42

    .line 6643
    :cond_40
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_41

    .line 6644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    .line 6646
    :cond_41
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6647
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6649
    :cond_42
    const/16 v33, 0x1

    goto/16 :goto_11

    .line 6652
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_52

    .line 6653
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v17

    .line 6654
    .restart local v17    # "channelId":I
    const/16 v41, 0x0

    .line 6655
    .local v41, "skipUpdate":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 6656
    .local v18, "channelPts":Ljava/lang/Integer;
    if-nez v18, :cond_44

    .line 6657
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 6658
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_46

    .line 6659
    const/4 v14, 0x0

    .local v14, "c":I
    :goto_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_44

    .line 6660
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6661
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_45

    .line 6662
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 6663
    const/16 v41, 0x1

    .line 6671
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_44
    :goto_14
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6672
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6673
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6674
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6675
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_47

    .line 6676
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6677
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_47

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_47

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_47

    .line 6678
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6679
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6680
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6681
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6682
    add-int/lit8 v13, v13, -0x1

    .line 6675
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 6659
    .end local v13    # "b":I
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    .restart local v14    # "c":I
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 6668
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 6687
    .restart local v13    # "b":I
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_47
    if-nez v41, :cond_51

    .line 6688
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_4a

    .line 6689
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_49

    .line 6690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get channel diff inner TL_updates, channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6691
    if-nez v32, :cond_48

    .line 6692
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 6693
    :cond_48
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 6694
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6697
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6698
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_11

    .line 6700
    :cond_4a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_36

    .line 6701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get channel diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6702
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 6703
    .local v47, "updatesStartWaitTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    .line 6704
    .local v24, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v24, :cond_4b

    .line 6705
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 6707
    :cond_4b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4c

    if-eqz v47, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4f

    .line 6708
    :cond_4c
    if-nez v47, :cond_4d

    .line 6709
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6711
    :cond_4d
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6712
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 6713
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v12, :cond_4e

    .line 6714
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6715
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6717
    :cond_4e
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6719
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    :cond_4f
    if-nez v32, :cond_50

    .line 6720
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 6721
    :cond_50
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 6722
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6727
    .end local v24    # "gettingDifferenceChannel":Ljava/lang/Boolean;
    .end local v47    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need load unknown channel = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 6737
    .end local v13    # "b":I
    .end local v17    # "channelId":I
    .end local v18    # "channelPts":Ljava/lang/Integer;
    .end local v41    # "skipUpdate":Z
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_52
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_56

    .line 6738
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-eq v4, v6, :cond_53

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-ne v4, v6, :cond_55

    :cond_53
    const/16 v38, 0x1

    .line 6742
    .local v38, "processUpdate":Z
    :goto_16
    if-eqz v38, :cond_59

    .line 6743
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6744
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_0

    .line 6745
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    if-eqz v4, :cond_54

    .line 6746
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 6748
    :cond_54
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 6738
    .end local v38    # "processUpdate":Z
    :cond_55
    const/16 v38, 0x0

    goto :goto_16

    .line 6740
    :cond_56
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eq v4, v6, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v6, :cond_58

    :cond_57
    const/16 v38, 0x1

    .restart local v38    # "processUpdate":Z
    :goto_17
    goto :goto_16

    .end local v38    # "processUpdate":Z
    :cond_58
    const/16 v38, 0x0

    goto :goto_17

    .line 6751
    .restart local v38    # "processUpdate":Z
    :cond_59
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_5c

    .line 6752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff TL_updatesCombined, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6757
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_5a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5d

    .line 6758
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_5b

    .line 6759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 6761
    :cond_5b
    const-string/jumbo v4, "add TL_updates/Combined to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6762
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6754
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_18

    .line 6764
    :cond_5d
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6768
    .end local v10    # "a":I
    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v38    # "processUpdate":Z
    :cond_5e
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    if-eqz v4, :cond_5f

    .line 6769
    const-string/jumbo v4, "need get diff TL_updatesTooLong"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6770
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6771
    :cond_5f
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    if-eqz v4, :cond_60

    .line 6772
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 6773
    :cond_60
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    if-eqz v4, :cond_0

    .line 6774
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    if-eqz v4, :cond_61

    .line 6775
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6776
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_0

    .line 6778
    :cond_61
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto/16 :goto_0

    .line 6789
    .restart local v10    # "a":I
    .restart local v25    # "key":Ljava/lang/Integer;
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    goto/16 :goto_2

    .line 6792
    .end local v25    # "key":Ljava/lang/Integer;
    :cond_63
    if-eqz v33, :cond_67

    .line 6793
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 6800
    .end local v10    # "a":I
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_64
    if-eqz v34, :cond_65

    .line 6801
    new-instance v40, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;

    invoke-direct/range {v40 .. v40}, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;-><init>()V

    .line 6802
    .local v40, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v40

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    .line 6803
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$108;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$108;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 6810
    .end local v40    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    :cond_65
    if-eqz v45, :cond_66

    .line 6811
    new-instance v4, Lorg/telegram/messenger/MessagesController$109;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$109;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6818
    :cond_66
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 6819
    return-void

    .line 6795
    .restart local v10    # "a":I
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_67
    const/4 v10, 0x0

    :goto_19
    const/4 v4, 0x3

    if-ge v10, v4, :cond_64

    .line 6796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 6795
    add-int/lit8 v10, v10, 0x1

    goto :goto_19
.end method

.method public putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 7
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 899
    if-nez p1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 903
    .local v1, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 904
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_2
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 907
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_3
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_6

    .line 910
    if-eqz v1, :cond_5

    .line 911
    if-nez p2, :cond_0

    .line 912
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 913
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 914
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 915
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 916
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 917
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 918
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 919
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 920
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 922
    :cond_4
    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 923
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v3, v3, -0x41

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 927
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 930
    :cond_6
    if-nez p2, :cond_b

    .line 931
    if-eqz v1, :cond_8

    .line 932
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    if-eq v4, v5, :cond_7

    .line 933
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 935
    :cond_7
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 936
    .local v2, "oldFlags":I
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v4, :cond_a

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 937
    .local v0, "newFlags":I
    :goto_2
    if-eq v2, v0, :cond_8

    .line 938
    new-instance v3, Lorg/telegram/messenger/MessagesController$9;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/MessagesController$9;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 946
    .end local v0    # "newFlags":I
    .end local v2    # "oldFlags":I
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 935
    goto :goto_1

    .restart local v2    # "oldFlags":I
    :cond_a
    move v0, v3

    .line 936
    goto :goto_2

    .line 947
    .end local v2    # "oldFlags":I
    :cond_b
    if-nez v1, :cond_c

    .line 948
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 949
    :cond_c
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_0

    .line 950
    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    .line 951
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 952
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 953
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 954
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 955
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 956
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 957
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 958
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 959
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 964
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 961
    :cond_d
    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 962
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_3
.end method

.method public putChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    :cond_0
    return-void

    .line 973
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 974
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 975
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 976
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {p0, v1, p2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V
    .locals 2
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "fromCache"    # Z

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 989
    :goto_0
    return-void

    .line 984
    :cond_0
    if-eqz p2, :cond_1

    .line 985
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putEncryptedChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p1, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1000
    :cond_0
    return-void

    .line 995
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 996
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 997
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 998
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 810
    if-nez p1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v2

    .line 813
    :cond_1
    if-eqz p2, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x14d

    if-eq v3, v4, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v4, 0xbdb28

    if-eq v3, v4, :cond_4

    move p2, v1

    .line 814
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 815
    .local v0, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 816
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 819
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->objectsByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_3
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_8

    .line 822
    if-eqz v0, :cond_7

    .line 823
    if-nez p2, :cond_0

    .line 824
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 825
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 826
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 831
    :goto_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_6

    .line 832
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 833
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_0

    .end local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    move p2, v2

    .line 813
    goto :goto_1

    .line 828
    .restart local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 829
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_2

    .line 835
    :cond_6
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 836
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto/16 :goto_0

    .line 840
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 843
    :cond_8
    if-nez p2, :cond_a

    .line 844
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 846
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 847
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 849
    :cond_9
    if-eqz v0, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eq v3, v4, :cond_0

    move v2, v1

    .line 850
    goto/16 :goto_0

    .line 852
    :cond_a
    if-nez v0, :cond_b

    .line 853
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 854
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_0

    .line 855
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    .line 856
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 857
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 858
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 863
    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_d

    .line 864
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 865
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 870
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 860
    :cond_c
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 861
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_3

    .line 867
    :cond_d
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 868
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_4
.end method

.method public putUsers(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const/4 v2, 0x0

    .line 881
    .local v2, "updateStatus":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 882
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 883
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 884
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v3, p2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 885
    const/4 v2, 0x1

    .line 882
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    if-eqz v2, :cond_0

    .line 889
    new-instance v4, Lorg/telegram/messenger/MessagesController$8;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$8;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerForPush(Ljava/lang/String;)V
    .locals 3
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 5035
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 5062
    :cond_0
    :goto_0
    return-void

    .line 5038
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5041
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 5042
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;-><init>()V

    .line 5043
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token_type:I

    .line 5044
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token:Ljava/lang/String;

    .line 5045
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$89;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public reloadWebPages(JLjava/util/HashMap;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2873
    .local p3, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2874
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2875
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2876
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2877
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v0, :cond_0

    .line 2878
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2879
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2882
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 2883
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 2884
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {v7, p0, v4, p1, p2}, Lorg/telegram/messenger/MessagesController$55;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 2923
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 9
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p5, "currentEncryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v8, 0x2

    .line 1401
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1405
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1406
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1408
    long-to-int v3, p1

    if-nez v3, :cond_2

    .line 1409
    if-eqz p5, :cond_0

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1412
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;-><init>()V

    .line 1413
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 1414
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 1415
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 1416
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$15;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$15;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1423
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;-><init>()V

    .line 1424
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;
    if-eqz p4, :cond_4

    .line 1425
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1429
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$16;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$16;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1426
    :cond_4
    if-eqz p3, :cond_3

    .line 1427
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2303
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 2304
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2305
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2306
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2307
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 2308
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$42;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$42;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2314
    return-void
.end method

.method public saveRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 4
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "asMask"    # Z

    .prologue
    .line 2317
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;-><init>()V

    .line 2318
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2319
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2320
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2321
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->unsave:Z

    .line 2322
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->attached:Z

    .line 2323
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$43;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$43;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2329
    return-void
.end method

.method public sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "botHash"    # Ljava/lang/String;

    .prologue
    .line 4598
    if-nez p1, :cond_0

    .line 4615
    :goto_0
    return-void

    .line 4601
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4602
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4603
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4604
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4605
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4606
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$79;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$79;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public sendTyping(JII)V
    .locals 11
    .param p1, "dialog_id"    # J
    .param p3, "action"    # I
    .param p4, "classGuid"    # I

    .prologue
    .line 2714
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 2811
    :cond_0
    :goto_0
    return-void

    .line 2717
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2718
    .local v5, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2721
    :cond_2
    if-nez v5, :cond_3

    .line 2722
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2723
    .restart local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    :cond_3
    long-to-int v2, p1

    .line 2726
    .local v2, "lower_part":I
    const/16 v6, 0x20

    shr-long v6, p1, v6

    long-to-int v1, v6

    .line 2727
    .local v1, "high_id":I
    if-eqz v2, :cond_e

    .line 2728
    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    .line 2732
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2733
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2734
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_4

    .line 2735
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2736
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_0

    .line 2740
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v6, :cond_0

    .line 2743
    if-nez p3, :cond_6

    .line 2744
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2762
    :cond_5
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$52;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$52;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2777
    .local v4, "reqId":I
    if-eqz p4, :cond_0

    .line 2778
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0

    .line 2745
    .end local v4    # "reqId":I
    :cond_6
    const/4 v6, 0x1

    if-ne p3, v6, :cond_7

    .line 2746
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2747
    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    .line 2748
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2749
    :cond_8
    const/4 v6, 0x3

    if-ne p3, v6, :cond_9

    .line 2750
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2751
    :cond_9
    const/4 v6, 0x4

    if-ne p3, v6, :cond_a

    .line 2752
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2753
    :cond_a
    const/4 v6, 0x5

    if-ne p3, v6, :cond_b

    .line 2754
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2755
    :cond_b
    const/4 v6, 0x6

    if-ne p3, v6, :cond_c

    .line 2756
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2757
    :cond_c
    const/4 v6, 0x7

    if-ne p3, v6, :cond_d

    .line 2758
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2759
    :cond_d
    const/16 v6, 0x8

    if-ne p3, v6, :cond_5

    .line 2760
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2781
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    :cond_e
    if-nez p3, :cond_0

    .line 2784
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 2785
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v6, :cond_0

    .line 2786
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;-><init>()V

    .line 2787
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 2788
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 2789
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 2790
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->typing:Z

    .line 2791
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$53;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$53;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2806
    .restart local v4    # "reqId":I
    if-eqz p4, :cond_0

    .line 2807
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public setLastCreatedDialogId(JZ)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "set"    # Z

    .prologue
    .line 788
    if-eqz p3, :cond_0

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogMainThreadIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    :goto_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$7;-><init>(Lorg/telegram/messenger/MessagesController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 803
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogMainThreadIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sortDialogs(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8274
    .local p1, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8275
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8277
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8278
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8279
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8280
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8281
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8282
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8283
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8284
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8285
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 8287
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8288
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_f

    .line 8289
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8290
    .local v2, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v7, 0x20

    shr-long/2addr v8, v7

    long-to-int v4, v8

    .line 8291
    .local v4, "high_id":I
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v8

    .line 8292
    .local v5, "lower_id":I
    if-eqz v5, :cond_e

    const/4 v7, 0x1

    if-eq v4, v7, :cond_e

    .line 8293
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8294
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 8295
    neg-int v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 8296
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_0

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_2

    .line 8297
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8300
    :cond_2
    if-eqz v1, :cond_3

    .line 8301
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_8

    .line 8302
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8303
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8308
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_4

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    if-eqz v7, :cond_5

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 8309
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8351
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_2
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8352
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8354
    :cond_6
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v7, :cond_7

    .line 8355
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8288
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 8305
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8312
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_9
    if-gez v5, :cond_c

    .line 8313
    if-eqz p1, :cond_a

    .line 8314
    neg-int v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 8315
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_a

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_a

    .line 8316
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8317
    add-int/lit8 v0, v0, -0x1

    .line 8318
    goto :goto_3

    .line 8321
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8323
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8324
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8325
    neg-int v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 8326
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_5

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_b

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v7, :cond_5

    .line 8327
    :cond_b
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8333
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 8334
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_5

    .line 8335
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_d

    .line 8336
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8338
    :cond_d
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8346
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 8347
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v3, :cond_5

    .line 8348
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8359
    .end local v2    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v4    # "high_id":I
    .end local v5    # "lower_id":I
    :cond_f
    return-void
.end method

.method public startShortPoll(IZ)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "stop"    # Z

    .prologue
    .line 5339
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$96;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$96;-><init>(Lorg/telegram/messenger/MessagesController;ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5352
    return-void
.end method

.method public toggleAdminMode(IZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4618
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;-><init>()V

    .line 4619
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->chat_id:I

    .line 4620
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->enabled:Z

    .line 4621
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$80;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$80;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4630
    return-void
.end method

.method public toggleUserAdmin(IIZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "admin"    # Z

    .prologue
    .line 4633
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;-><init>()V

    .line 4634
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->chat_id:I

    .line 4635
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4636
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->is_admin:Z

    .line 4637
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$81;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4643
    return-void
.end method

.method public toogleChannelInvites(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4511
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;-><init>()V

    .line 4512
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4513
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->enabled:Z

    .line 4514
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$75;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$75;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4522
    return-void
.end method

.method public toogleChannelSignatures(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4525
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;-><init>()V

    .line 4526
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4527
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    .line 4528
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$76;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$76;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4542
    return-void
.end method

.method public unblockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1846
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 1847
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1848
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1851
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1852
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1853
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1854
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$29;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$29;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public unregistedPush()V
    .locals 3

    .prologue
    .line 4946
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4947
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;-><init>()V

    .line 4948
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token:Ljava/lang/String;

    .line 4949
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token_type:I

    .line 4950
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$86;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$86;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4957
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    :cond_0
    return-void
.end method

.method public updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "about"    # Ljava/lang/String;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4545
    if-nez p3, :cond_0

    .line 4566
    :goto_0
    return-void

    .line 4548
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;-><init>()V

    .line 4549
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4550
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->about:Ljava/lang/String;

    .line 4551
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$77;

    invoke-direct {v2, p0, p3, p2}, Lorg/telegram/messenger/MessagesController$77;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public updateChannelUserName(ILjava/lang/String;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 4569
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 4570
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4571
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 4572
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$78;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$78;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4595
    return-void
.end method

.method public updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 1
    .param p1, "config"    # Lorg/telegram/tgnet/TLRPC$TL_config;

    .prologue
    .line 352
    new-instance v0, Lorg/telegram/messenger/MessagesController$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$3;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;)V
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8145
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 8146
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V
    .locals 19
    .param p1, "uid"    # J
    .param p4, "isBroadcast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 8149
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 8271
    :cond_0
    :goto_0
    return-void

    .line 8153
    :cond_1
    move-wide/from16 v0, p1

    long-to-int v14, v0

    if-nez v14, :cond_9

    const/4 v9, 0x1

    .line 8154
    .local v9, "isEncryptedChat":Z
    :goto_1
    const/4 v10, 0x0

    .line 8155
    .local v10, "lastMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    .line 8156
    .local v6, "channelId":I
    const/4 v13, 0x0

    .line 8157
    .local v13, "updateRating":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_b

    .line 8158
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 8159
    .local v11, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v10, :cond_5

    if-nez v9, :cond_2

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v14, v15, :cond_5

    :cond_2
    if-nez v9, :cond_3

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    :cond_3
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-lt v14, v15, :cond_5

    :cond_4
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v14, v15, :cond_6

    .line 8160
    :cond_5
    move-object v10, v11

    .line 8161
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v14, :cond_6

    .line 8162
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 8165
    :cond_6
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v14

    if-nez v14, :cond_7

    .line 8166
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 8167
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 8172
    :cond_7
    :goto_3
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 8173
    const/4 v13, 0x1

    .line 8157
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 8153
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v9    # "isEncryptedChat":Z
    .end local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v13    # "updateRating":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 8168
    .restart local v4    # "a":I
    .restart local v6    # "channelId":I
    .restart local v9    # "isEncryptedChat":Z
    .restart local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .restart local v13    # "updateRating":Z
    :cond_a
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 8169
    const/4 v14, 0x0

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_3

    .line 8176
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_b
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 8177
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8179
    if-eqz v10, :cond_0

    .line 8182
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8183
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v14, :cond_d

    .line 8184
    if-eqz v8, :cond_0

    .line 8185
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8186
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8187
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8189
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8190
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8191
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8192
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8193
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8194
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8195
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8196
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsAdmin:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8197
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8199
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8200
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8201
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8202
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 8203
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8204
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 8205
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_c

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_c

    .line 8206
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8208
    :cond_c
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8209
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v14

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 8210
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8215
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_d
    const/4 v5, 0x0

    .line 8217
    .local v5, "changed":Z
    if-nez v8, :cond_14

    .line 8218
    if-nez p4, :cond_11

    .line 8219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 8220
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_e

    if-eqz v7, :cond_0

    :cond_e
    if-eqz v7, :cond_f

    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_0

    .line 8223
    :cond_f
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 8224
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 8225
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 8226
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8227
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 8228
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    :goto_4
    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 8229
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8230
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8231
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8232
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_10

    .line 8233
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8234
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_10

    .line 8235
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8238
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 8239
    const/4 v5, 0x1

    .line 8264
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    :goto_5
    if-eqz v5, :cond_12

    .line 8265
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 8268
    :cond_12
    if-eqz v13, :cond_0

    .line 8269
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    goto/16 :goto_0

    .line 8228
    .restart local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_13
    const/4 v14, 0x0

    goto :goto_4

    .line 8242
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_14
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-lez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v14, v15, :cond_17

    :cond_15
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gez v14, :cond_16

    .line 8243
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_16

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v14, v15, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 8244
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ltz v14, :cond_17

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v14, v15, :cond_11

    .line 8245
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 8246
    .restart local v12    # "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_18

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    .line 8247
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8249
    :cond_18
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 8250
    if-nez p4, :cond_19

    .line 8251
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 8252
    const/4 v5, 0x1

    .line 8254
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8255
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_11

    .line 8256
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8257
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_11

    .line 8258
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method public updateTimerProc()V
    .locals 30

    .prologue
    .line 2382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2384
    .local v10, "currentTime":J
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    .line 2386
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 2387
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_4

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v23, :cond_4

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    if-nez v23, :cond_4

    .line 2388
    sget-wide v24, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_2

    sget-wide v24, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    cmp-long v23, v24, v26

    if-lez v23, :cond_2

    .line 2389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/32 v26, 0xd6d8

    cmp-long v23, v24, v26

    if-gez v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 2390
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2392
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 2393
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2396
    :cond_1
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2397
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2398
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$46;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$46;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 2437
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_6

    .line 2438
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2439
    .local v13, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_6

    .line 2440
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2441
    .local v12, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 2442
    .local v21, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x5dc

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_3

    .line 2443
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "QUEUE CHANNEL "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2444
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    .line 2439
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2415
    .end local v4    # "a":I
    .end local v12    # "key":I
    .end local v13    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x7d0

    cmp-long v23, v24, v26

    if-ltz v23, :cond_2

    .line 2416
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2417
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 2418
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2420
    :cond_5
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2421
    .restart local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2422
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$47;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$47;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto/16 :goto_0

    .line 2449
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v4, v0, :cond_8

    .line 2450
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v24

    const-wide/16 v26, 0x5dc

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_7

    .line 2451
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2452
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 2449
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2456
    .end local v4    # "a":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-eqz v23, :cond_e

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v23, v24, v26

    if-ltz v23, :cond_e

    .line 2457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    .line 2458
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_3
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v7, v0, :cond_e

    .line 2459
    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 2460
    .local v6, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-nez v23, :cond_b

    .line 2458
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2459
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    goto :goto_4

    .line 2463
    .restart local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_d

    .line 2464
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 2465
    .restart local v12    # "key":I
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V

    .line 2466
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2467
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    .line 2468
    if-nez v4, :cond_c

    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    .line 2469
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$48;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v15}, Lorg/telegram/messenger/MessagesController$48;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2463
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2468
    :cond_c
    const/16 v23, 0x0

    goto :goto_7

    .line 2497
    .end local v12    # "key":I
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    :cond_d
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    .line 2500
    .end local v4    # "a":I
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v7    # "b":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_13

    .line 2501
    const/16 v18, 0x0

    .line 2502
    .local v18, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    .line 2503
    .local v8, "currentServerTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2504
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v25, v8, -0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 2505
    if-nez v18, :cond_10

    .line 2506
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2508
    .restart local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2511
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_11
    if-eqz v18, :cond_13

    .line 2512
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 2513
    .local v19, "uid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2515
    .end local v19    # "uid":Ljava/lang/Integer;
    :cond_12
    new-instance v23, Lorg/telegram/messenger/MessagesController$49;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$49;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2523
    .end local v8    # "currentServerTime":I
    .end local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v23

    if-eqz v23, :cond_15

    .line 2524
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_15

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 2526
    .restart local v12    # "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    .line 2527
    .local v17, "timeout":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    cmp-long v23, v24, v26

    if-gez v23, :cond_14

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v23

    if-ltz v23, :cond_14

    .line 2530
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 2524
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2535
    .end local v4    # "a":I
    .end local v12    # "key":I
    .end local v17    # "timeout":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 2536
    :cond_16
    const/16 v20, 0x0

    .line 2537
    .local v20, "updated":Z
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2538
    .local v14, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_1b

    .line 2539
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2540
    .local v12, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2541
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_19

    .line 2542
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2544
    .local v22, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 2545
    const/16 v16, 0x7530

    .line 2549
    .local v16, "timeToRemove":I
    :goto_d
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    move-wide/from16 v24, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_17

    .line 2550
    const/16 v20, 0x1

    .line 2551
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2552
    add-int/lit8 v4, v4, -0x1

    .line 2541
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2547
    .end local v16    # "timeToRemove":I
    :cond_18
    const/16 v16, 0x170c

    .restart local v16    # "timeToRemove":I
    goto :goto_d

    .line 2555
    .end local v16    # "timeToRemove":I
    .end local v22    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2558
    add-int/lit8 v7, v7, -0x1

    .line 2538
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2562
    .end local v4    # "a":I
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v12    # "key":Ljava/lang/Long;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 2564
    if-eqz v20, :cond_1c

    .line 2565
    new-instance v23, Lorg/telegram/messenger/MessagesController$50;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$50;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2573
    .end local v7    # "b":I
    .end local v14    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "updated":Z
    :cond_1c
    return-void
.end method

.method public uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 5
    .param p1, "bigPhoto"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 1989
    if-eqz p1, :cond_0

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 1991
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 1993
    :cond_0
    return-void
.end method
