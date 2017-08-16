.class public Lorg/telegram/tgnet/TLRPC$TL_config;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_config"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public call_connect_timeout_ms:I

.field public call_packet_timeout_ms:I

.field public call_receive_timeout_ms:I

.field public call_ring_timeout_ms:I

.field public chat_big_size:I

.field public chat_size_max:I

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

.field public disabled_features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public edit_time_limit:I

.field public expires:I

.field public flags:I

.field public forwarded_count_max:I

.field public lang_pack_version:I

.field public me_url_prefix:Ljava/lang/String;

.field public megagroup_size_max:I

.field public notify_cloud_delay_ms:I

.field public notify_default_delay_ms:I

.field public offline_blur_timeout_ms:I

.field public offline_idle_timeout_ms:I

.field public online_cloud_timeout_ms:I

.field public online_update_period_ms:I

.field public phonecalls_enabled:Z

.field public pinned_dialogs_count_max:I

.field public push_chat_limit:I

.field public push_chat_period_ms:I

.field public rating_e_decay:I

.field public saved_gifs_limit:I

.field public stickers_recent_limit:I

.field public suggested_lang_code:Ljava/lang/String;

.field public test_mode:Z

.field public this_dc:I

.field public tmp_sessions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15768
    const v0, 0x7feec888

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15767
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 15776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    .line 15802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15805
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    if-eq v1, p1, :cond_1

    .line 15806
    if-eqz p2, :cond_0

    .line 15807
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_config"

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

    .line 15809
    :cond_0
    const/4 v0, 0x0

    .line 15814
    :goto_0
    return-object v0

    .line 15812
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_config;-><init>()V

    .line 15813
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_config;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_config;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v7, 0x1cb5c415

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15818
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 15819
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    .line 15820
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    .line 15821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    .line 15822
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    .line 15823
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    .line 15824
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15825
    .local v2, "magic":I
    if-eq v2, v7, :cond_1

    .line 15826
    if-eqz p2, :cond_2

    .line 15827
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_0
    move v4, v6

    .line 15819
    goto :goto_0

    .line 15831
    .restart local v2    # "magic":I
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15832
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 15833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    move-result-object v3

    .line 15834
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    if-nez v3, :cond_3

    .line 15885
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_2
    return-void

    .line 15837
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15832
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15839
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    .line 15840
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    .line 15841
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    .line 15842
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    .line 15843
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    .line 15844
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    .line 15845
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    .line 15846
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    .line 15847
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    .line 15848
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    .line 15849
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    .line 15850
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    .line 15851
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    .line 15852
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    .line 15853
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    .line 15854
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    .line 15855
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 15856
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    .line 15858
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    .line 15859
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    .line 15860
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    .line 15861
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    .line 15862
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    .line 15863
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    .line 15864
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 15865
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    .line 15867
    :cond_6
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    .line 15868
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    .line 15870
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15871
    if-eq v2, v7, :cond_8

    .line 15872
    if-eqz p2, :cond_2

    .line 15873
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 15877
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15878
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 15879
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v3

    .line 15880
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v3, :cond_2

    .line 15883
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15878
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 15888
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15889
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 15890
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15891
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15892
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15893
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 15894
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15895
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15896
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15897
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15898
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 15899
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15889
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 15901
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15902
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15903
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15904
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15905
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15906
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15907
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15908
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15909
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15910
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15911
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15912
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15913
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15914
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15915
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15916
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15917
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 15918
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15920
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15921
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15922
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15923
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15924
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15925
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15926
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 15927
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15929
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 15930
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15932
    :cond_4
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15933
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15934
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15935
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 15936
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15935
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15938
    :cond_5
    return-void
.end method
