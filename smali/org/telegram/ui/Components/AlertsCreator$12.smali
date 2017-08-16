.class final Lorg/telegram/ui/Components/AlertsCreator$12;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/16 v1, 0x10

    .line 843
    if-nez p1, :cond_0

    .line 844
    const-string/jumbo v0, "ShortMessageLifetimeForever"

    const v1, 0x7f070683

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    .line 845
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 846
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_1
    if-ne p1, v1, :cond_2

    .line 848
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    .line 850
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_3
    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    .line 852
    const/16 v0, 0xe10

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 853
    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    .line 854
    const v0, 0x15180

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 856
    const v0, 0x93a80

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_0
.end method
