.class public Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Latvian"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2308
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 2310
    if-nez p1, :cond_0

    .line 2315
    :goto_0
    return v0

    .line 2312
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    if-ne v1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 2313
    const/4 v0, 0x2

    goto :goto_0

    .line 2315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
