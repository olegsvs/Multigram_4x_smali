.class public Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Update"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public blocked:Z

.field public channel_id:I

.field public chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public chat_id:I

.field public chat_instance:J

.field public data:[B

.field public date:I

.field public dc_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dcOption;",
            ">;"
        }
    .end annotation
.end field

.field public difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public enabled:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public game_short_name:Ljava/lang/String;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public inbox_date:I

.field public inviter_id:I

.field public is_admin:Z

.field public key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

.field public last_name:Ljava/lang/String;

.field public masks:Z

.field public max_date:I

.field public max_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public offset:Ljava/lang/String;

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public phone:Ljava/lang/String;

.field public phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public pinned:Z

.field public popup:Z

.field public previous:Z

.field public pts:I

.field public pts_count:I

.field public qts:I

.field public query:Ljava/lang/String;

.field public query_id:J

.field public random_id:J

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field public type:Ljava/lang/String;

.field public user_id:I

.field public username:Ljava/lang/String;

.field public version:I

.field public views:I

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12943
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 12944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    .line 12976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->entities:Ljava/util/ArrayList;

    .line 12981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    .line 12991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->dc_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12999
    const/4 v0, 0x0

    .line 13000
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Update;
    sparse-switch p1, :sswitch_data_0

    .line 13179
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 13180
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Update"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13002
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    .line 13003
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13005
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;-><init>()V

    .line 13006
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13008
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;-><init>()V

    .line 13009
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13011
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;-><init>()V

    .line 13012
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13014
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    .line 13015
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13017
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;-><init>()V

    .line 13018
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13020
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    .line 13021
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13023
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 13024
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13026
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;-><init>()V

    .line 13027
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13029
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    .line 13030
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13032
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    .line 13033
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13035
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 13036
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13038
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    .line 13039
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13041
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    .line 13042
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13044
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    .line 13045
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13047
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    .line 13048
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13050
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    .line 13051
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13053
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;-><init>()V

    .line 13054
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13056
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    .line 13057
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13059
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;-><init>()V

    .line 13060
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13062
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    .line 13063
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13065
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    .line 13066
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13068
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;-><init>()V

    .line 13069
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13071
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    .line 13072
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13074
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    .line 13075
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13077
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    .line 13078
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13080
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    .line 13081
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13083
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    .line 13084
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13086
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    .line 13087
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13089
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 13090
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13092
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;-><init>()V

    .line 13093
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13095
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;-><init>()V

    .line 13096
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13098
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    .line 13099
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13101
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;-><init>()V

    .line 13102
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13104
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    .line 13105
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13107
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;-><init>()V

    .line 13108
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13110
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    .line 13111
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13113
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    .line 13114
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13116
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;-><init>()V

    .line 13117
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13119
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;-><init>()V

    .line 13120
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13122
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;-><init>()V

    .line 13123
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13125
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;-><init>()V

    .line 13126
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13128
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 13129
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13131
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;-><init>()V

    .line 13132
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13134
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    .line 13135
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13137
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    .line 13138
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13140
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;-><init>()V

    .line 13141
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13143
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    .line 13144
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13146
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    .line 13147
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13149
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    .line 13150
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13152
    :sswitch_32
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    .line 13153
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13155
    :sswitch_33
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;-><init>()V

    .line 13156
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13158
    :sswitch_34
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    .line 13159
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13161
    :sswitch_35
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;-><init>()V

    .line 13162
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13164
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    .line 13165
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13167
    :sswitch_37
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    .line 13168
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13170
    :sswitch_38
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 13171
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13173
    :sswitch_39
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    .line 13174
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13176
    :sswitch_3a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13182
    :cond_0
    if-eqz v0, :cond_1

    .line 13183
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Update;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13185
    :cond_1
    return-object v0

    .line 13000
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f1317e6 -> :sswitch_33
        -0x71a1678d -> :sswitch_31
        -0x6c8acbe2 -> :sswitch_2c
        -0x6acec4f4 -> :sswitch_30
        -0x67a6db8b -> :sswitch_1e
        -0x675ed4b5 -> :sswitch_10
        -0x669e02a4 -> :sswitch_2a
        -0x65bdd3e0 -> :sswitch_28
        -0x659a15e1 -> :sswitch_19
        -0x62d1983b -> :sswitch_2b
        -0x5df24f1b -> :sswitch_0
        -0x5dd622fa -> :sswitch_23
        -0x58ccd48d -> :sswitch_25
        -0x54f094e2 -> :sswitch_26
        -0x4b5d1773 -> :sswitch_1a
        -0x496fe6a7 -> :sswitch_20
        -0x492ba9aa -> :sswitch_2d
        -0x413d9711 -> :sswitch_12
        -0x3c8ade37 -> :sswitch_2f
        -0x28ee5d34 -> :sswitch_8
        -0x27350973 -> :sswitch_27
        -0x1bfc8f5d -> :sswitch_15
        -0x18cab81f -> :sswitch_5
        -0x15b4f1a4 -> :sswitch_18
        -0x14fb9805 -> :sswitch_1b
        -0x141b97e7 -> :sswitch_1d
        -0x11d44697 -> :sswitch_24
        -0x11c4d8d6 -> :sswitch_22
        -0x62d85a6 -> :sswitch_3
        0x7761198 -> :sswitch_3a
        0xbb2d201 -> :sswitch_37
        0xe48f964 -> :sswitch_16
        0x10c2404b -> :sswitch_35
        0x12b9417b -> :sswitch_9
        0x12bcbd9a -> :sswitch_e
        0x1710f156 -> :sswitch_4
        0x1b3f4df7 -> :sswitch_32
        0x1bfbd823 -> :sswitch_f
        0x1f2b0afd -> :sswitch_d
        0x2575bbb9 -> :sswitch_13
        0x25d6c9c7 -> :sswitch_b
        0x2f2f21bf -> :sswitch_7
        0x3354678f -> :sswitch_11
        0x38fe25b7 -> :sswitch_36
        0x40771900 -> :sswitch_2e
        0x4214f37f -> :sswitch_38
        0x43ae3dec -> :sswitch_c
        0x4e90bfd6 -> :sswitch_a
        0x54826690 -> :sswitch_21
        0x56022f4d -> :sswitch_1f
        0x571d2742 -> :sswitch_1
        0x5a68e3f7 -> :sswitch_29
        0x5c486927 -> :sswitch_1c
        0x62ba04d9 -> :sswitch_6
        0x688a30aa -> :sswitch_34
        0x68c13933 -> :sswitch_39
        0x6e5f8c22 -> :sswitch_14
        0x6e947941 -> :sswitch_2
        0x7f891213 -> :sswitch_17
    .end sparse-switch
.end method
