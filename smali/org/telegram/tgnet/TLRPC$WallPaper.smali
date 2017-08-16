.class public Lorg/telegram/tgnet/TLRPC$WallPaper;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallPaper"
.end annotation


# instance fields
.field public bg_color:I

.field public color:I

.field public id:I

.field public sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20745
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 20748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20753
    const/4 v0, 0x0

    .line 20754
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$WallPaper;
    sparse-switch p1, :sswitch_data_0

    .line 20762
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 20763
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in WallPaper"

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

    .line 20756
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WallPaper;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    .line 20757
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WallPaper;
    goto :goto_0

    .line 20759
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WallPaper;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WallPaper;
    goto :goto_0

    .line 20765
    :cond_0
    if-eqz v0, :cond_1

    .line 20766
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20768
    :cond_1
    return-object v0

    .line 20754
    nop

    :sswitch_data_0
    .sparse-switch
        -0x334fc9a9 -> :sswitch_0
        0x63117f24 -> :sswitch_1
    .end sparse-switch
.end method
