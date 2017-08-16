.class public Lorg/telegram/messenger/LocaleController;
.super Ljava/lang/Object;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Breton;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Czech;,
        Lorg/telegram/messenger/LocaleController$PluralRules_French;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Langi;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;,
        Lorg/telegram/messenger/LocaleController$PluralRules_None;,
        Lorg/telegram/messenger/LocaleController$PluralRules_One;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Polish;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Two;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Zero;,
        Lorg/telegram/messenger/LocaleController$PluralRules;,
        Lorg/telegram/messenger/LocaleController$LocaleInfo;,
        Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/LocaleController; = null

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static is24HourFormat:Z

.field public static isRTL:Z

.field public static nameDisplayOrder:I


# instance fields
.field private allRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private changingConfiguration:Z

.field public chatDate:Lorg/telegram/messenger/time/FastDateFormat;

.field public chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

.field private currencyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;

.field private currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

.field public formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

.field private languageOverride:Ljava/lang/String;

.field public languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public languagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingRemoteLanguages:Z

.field private localeValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private reloadLastFile:Z

.field public remoteLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private systemDefaultLocale:Ljava/util/Locale;

.field private translitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 53
    const/4 v0, 0x1

    sput v0, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    .line 54
    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    .line 73
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 75
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 156
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    .line 157
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    .line 158
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    .line 160
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    .line 177
    const/16 v10, 0x38

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "bem"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "brx"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "da"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "de"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "el"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "en"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "eo"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "es"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "et"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "fi"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "fo"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string/jumbo v12, "gl"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string/jumbo v12, "he"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string/jumbo v12, "iw"

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string/jumbo v12, "it"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const-string/jumbo v12, "nb"

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string/jumbo v12, "nl"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const-string/jumbo v12, "nn"

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string/jumbo v12, "no"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const-string/jumbo v12, "sv"

    aput-object v12, v10, v11

    const/16 v11, 0x14

    const-string/jumbo v12, "af"

    aput-object v12, v10, v11

    const/16 v11, 0x15

    const-string/jumbo v12, "bg"

    aput-object v12, v10, v11

    const/16 v11, 0x16

    const-string/jumbo v12, "bn"

    aput-object v12, v10, v11

    const/16 v11, 0x17

    const-string/jumbo v12, "ca"

    aput-object v12, v10, v11

    const/16 v11, 0x18

    const-string/jumbo v12, "eu"

    aput-object v12, v10, v11

    const/16 v11, 0x19

    const-string/jumbo v12, "fur"

    aput-object v12, v10, v11

    const/16 v11, 0x1a

    const-string/jumbo v12, "fy"

    aput-object v12, v10, v11

    const/16 v11, 0x1b

    const-string/jumbo v12, "gu"

    aput-object v12, v10, v11

    const/16 v11, 0x1c

    const-string/jumbo v12, "ha"

    aput-object v12, v10, v11

    const/16 v11, 0x1d

    const-string/jumbo v12, "is"

    aput-object v12, v10, v11

    const/16 v11, 0x1e

    const-string/jumbo v12, "ku"

    aput-object v12, v10, v11

    const/16 v11, 0x1f

    const-string/jumbo v12, "lb"

    aput-object v12, v10, v11

    const/16 v11, 0x20

    const-string/jumbo v12, "ml"

    aput-object v12, v10, v11

    const/16 v11, 0x21

    const-string/jumbo v12, "mr"

    aput-object v12, v10, v11

    const/16 v11, 0x22

    const-string/jumbo v12, "nah"

    aput-object v12, v10, v11

    const/16 v11, 0x23

    const-string/jumbo v12, "ne"

    aput-object v12, v10, v11

    const/16 v11, 0x24

    const-string/jumbo v12, "om"

    aput-object v12, v10, v11

    const/16 v11, 0x25

    const-string/jumbo v12, "or"

    aput-object v12, v10, v11

    const/16 v11, 0x26

    const-string/jumbo v12, "pa"

    aput-object v12, v10, v11

    const/16 v11, 0x27

    const-string/jumbo v12, "pap"

    aput-object v12, v10, v11

    const/16 v11, 0x28

    const-string/jumbo v12, "ps"

    aput-object v12, v10, v11

    const/16 v11, 0x29

    const-string/jumbo v12, "so"

    aput-object v12, v10, v11

    const/16 v11, 0x2a

    const-string/jumbo v12, "sq"

    aput-object v12, v10, v11

    const/16 v11, 0x2b

    const-string/jumbo v12, "sw"

    aput-object v12, v10, v11

    const/16 v11, 0x2c

    const-string/jumbo v12, "ta"

    aput-object v12, v10, v11

    const/16 v11, 0x2d

    const-string/jumbo v12, "te"

    aput-object v12, v10, v11

    const/16 v11, 0x2e

    const-string/jumbo v12, "tk"

    aput-object v12, v10, v11

    const/16 v11, 0x2f

    const-string/jumbo v12, "ur"

    aput-object v12, v10, v11

    const/16 v11, 0x30

    const-string/jumbo v12, "zu"

    aput-object v12, v10, v11

    const/16 v11, 0x31

    const-string/jumbo v12, "mn"

    aput-object v12, v10, v11

    const/16 v11, 0x32

    const-string/jumbo v12, "gsw"

    aput-object v12, v10, v11

    const/16 v11, 0x33

    const-string/jumbo v12, "chr"

    aput-object v12, v10, v11

    const/16 v11, 0x34

    const-string/jumbo v12, "rm"

    aput-object v12, v10, v11

    const/16 v11, 0x35

    const-string/jumbo v12, "pt"

    aput-object v12, v10, v11

    const/16 v11, 0x36

    const-string/jumbo v12, "an"

    aput-object v12, v10, v11

    const/16 v11, 0x37

    const-string/jumbo v12, "ast"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_One;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_One;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 181
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "cs"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "sk"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 182
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ff"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "fr"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "kab"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_French;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_French;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 183
    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "hr"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "ru"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "sr"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "uk"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "be"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "bs"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "sh"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 184
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "lv"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 185
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "lt"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 186
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "pl"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 187
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ro"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "mo"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 188
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "sl"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 189
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ar"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "fa"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 190
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "mk"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 191
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "cy"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 192
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "br"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 193
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "lag"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 194
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "shi"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 195
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "mt"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 196
    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ga"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "se"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "sma"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "smi"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "smj"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "smn"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "sms"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Two;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Two;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 197
    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ak"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "am"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "bh"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "fil"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "tl"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "guw"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "hi"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "ln"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "mg"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "nso"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "ti"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string/jumbo v12, "wa"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 198
    const/16 v10, 0x1a

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "az"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "bm"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "ig"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "hu"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "ja"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "kde"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "kea"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "ko"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "my"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "ses"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v12, "sg"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string/jumbo v12, "to"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string/jumbo v12, "tr"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string/jumbo v12, "vi"

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string/jumbo v12, "wo"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const-string/jumbo v12, "yo"

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string/jumbo v12, "zh"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const-string/jumbo v12, "bo"

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string/jumbo v12, "dz"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const-string/jumbo v12, "id"

    aput-object v12, v10, v11

    const/16 v11, 0x14

    const-string/jumbo v12, "jv"

    aput-object v12, v10, v11

    const/16 v11, 0x15

    const-string/jumbo v12, "ka"

    aput-object v12, v10, v11

    const/16 v11, 0x16

    const-string/jumbo v12, "km"

    aput-object v12, v10, v11

    const/16 v11, 0x17

    const-string/jumbo v12, "kn"

    aput-object v12, v10, v11

    const/16 v11, 0x18

    const-string/jumbo v12, "ms"

    aput-object v12, v10, v11

    const/16 v11, 0x19

    const-string/jumbo v12, "th"

    aput-object v12, v10, v11

    new-instance v11, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v11}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    invoke-direct {p0, v10, v11}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 204
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 205
    .local v6, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "English"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 206
    const-string/jumbo v10, "English"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 207
    const-string/jumbo v10, "en"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 208
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 209
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 210
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 214
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Italiano"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 215
    const-string/jumbo v10, "Italian"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 216
    const-string/jumbo v10, "it"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 217
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 218
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 219
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 223
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Espa\u00f1ol"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 224
    const-string/jumbo v10, "Spanish"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 225
    const-string/jumbo v10, "es"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 226
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 227
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 231
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Deutsch"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 232
    const-string/jumbo v10, "German"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 233
    const-string/jumbo v10, "de"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 234
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 235
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 236
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 240
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Nederlands"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 241
    const-string/jumbo v10, "Dutch"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 242
    const-string/jumbo v10, "nl"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 243
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 244
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 245
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 249
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 250
    const-string/jumbo v10, "Arabic"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 251
    const-string/jumbo v10, "ar"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 252
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 253
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 254
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 258
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 259
    const-string/jumbo v10, "Bulgarian"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 260
    const-string/jumbo v10, "bg"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 261
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 262
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 263
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 267
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0641\u0627\u0631\u0633\u06cc"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 268
    const-string/jumbo v10, "Parsi"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 269
    const-string/jumbo v10, "fa"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 270
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 271
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 272
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 276
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0905\u0902\u0917\u094d\u0930\u0947\u091c\u0940"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 277
    const-string/jumbo v10, "Hindi"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 278
    const-string/jumbo v10, "hi"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 279
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 280
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 281
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 285
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Catal\u00e0"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 286
    const-string/jumbo v10, "Catalan"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 287
    const-string/jumbo v10, "ca"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 288
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 289
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 290
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 294
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Esperanto"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 295
    const-string/jumbo v10, "Esperanto"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 296
    const-string/jumbo v10, "eo"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 297
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 298
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 302
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u7e41\u9ad4\u4e2d\u6587\uff08\u53f0\u7063\uff09"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 303
    const-string/jumbo v10, "Chinese Traditional (Taiwan)"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 304
    const-string/jumbo v10, "zh_tw"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 305
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 306
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 307
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 311
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u7b80\u4f53\u4e2d\u6587"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 312
    const-string/jumbo v10, "Simplified Chinese"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 313
    const-string/jumbo v10, "zh_cn"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 314
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 315
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 316
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 320
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u7e41\u9ad4\u4e2d\u6587\uff08\u9999\u6e2f\uff09"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 321
    const-string/jumbo v10, "Chinese (Hong Kong)"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 322
    const-string/jumbo v10, "zh_hk"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 323
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 324
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 325
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 329
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u65e5\u672c\u8a9e"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 330
    const-string/jumbo v10, "Japanese"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 331
    const-string/jumbo v10, "ja"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 332
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 333
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 334
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 338
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Hrvatski"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 339
    const-string/jumbo v10, "Croatian"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 340
    const-string/jumbo v10, "hr"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 341
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 342
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 343
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 347
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Euskara"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 348
    const-string/jumbo v10, "Basque"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 349
    const-string/jumbo v10, "eu"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 350
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 351
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 355
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Fran\u00e7ais"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 356
    const-string/jumbo v10, "French"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 357
    const-string/jumbo v10, "fr"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 358
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 359
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 363
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Galego"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 364
    const-string/jumbo v10, "Galician"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 365
    const-string/jumbo v10, "gl"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 366
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 367
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 371
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 372
    const-string/jumbo v10, "hebrew"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 373
    const-string/jumbo v10, "he"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 374
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 375
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 379
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 380
    const-string/jumbo v10, "Hebrew"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 381
    const-string/jumbo v10, "iw"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 382
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 383
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 387
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Polski"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 388
    const-string/jumbo v10, "Polish"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 389
    const-string/jumbo v10, "pl"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 390
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 391
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 392
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 396
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 397
    const-string/jumbo v10, "Russian"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 398
    const-string/jumbo v10, "ru"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 399
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 400
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 404
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "T\u00fcrk\u00e7e"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 405
    const-string/jumbo v10, "Turkish"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 406
    const-string/jumbo v10, "tr"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 407
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 408
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 409
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 413
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 414
    const-string/jumbo v10, "Ukrainian"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 415
    const-string/jumbo v10, "uk"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 416
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 417
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 418
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 422
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "Portugu\u00eas (Brasil)"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 423
    const-string/jumbo v10, "Portuguese (Brazil)"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 424
    const-string/jumbo v10, "pt_br"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 425
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 426
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 427
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v6}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 431
    .restart local v6    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v10, "\ud55c\uad6d\uc5b4"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 432
    const-string/jumbo v10, "Korean"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 433
    const-string/jumbo v10, "ko"

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 434
    const/4 v10, 0x0

    iput-object v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 435
    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 436
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->loadOtherLanguages()V

    .line 440
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 441
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages()V

    .line 444
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 445
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 446
    .local v5, "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v5    # "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 451
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 452
    .restart local v5    # "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v3

    .line 453
    .local v3, "existingLocale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-eqz v3, :cond_2

    .line 454
    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v10, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 455
    iget v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v10, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 450
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 462
    .end local v3    # "existingLocale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v5    # "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 463
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "currentInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v7, 0x0

    .line 468
    .local v7, "override":Z
    :try_start_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "mainconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 469
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "language"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "lang":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 471
    invoke-direct {p0, v4}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_4

    .line 473
    const/4 v7, 0x1

    .line 476
    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v10, "LocaleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "4 currentInfo // "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_5
    if-nez v1, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 478
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 480
    :cond_6
    if-eqz v1, :cond_7

    const-string/jumbo v10, "LocaleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "5 currentInfo // "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_7
    if-nez v1, :cond_8

    .line 482
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 483
    if-nez v1, :cond_8

    .line 484
    const-string/jumbo v10, "en"

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 487
    :cond_8
    invoke-virtual {p0, v1, v7}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v4    # "lang":Ljava/lang/String;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :goto_3
    :try_start_1
    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 494
    .local v9, "timezoneFilter":Landroid/content/IntentFilter;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v11, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$1;)V

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .end local v9    # "timezoneFilter":Landroid/content/IntentFilter;
    :goto_4
    return-void

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 495
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method static synthetic access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/LocaleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/LocaleController;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/LocaleController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/LocaleController;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/LocaleController;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$PluralRules;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$PluralRules;)Lorg/telegram/messenger/LocaleController$PluralRules;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Lorg/telegram/messenger/LocaleController$PluralRules;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/LocaleController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/LocaleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    return p1
.end method

.method private addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V
    .locals 4
    .param p1, "languages"    # [Ljava/lang/String;
    .param p2, "rules"    # Lorg/telegram/messenger/LocaleController$PluralRules;

    .prologue
    .line 508
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 509
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "defaultFormat"    # Ljava/lang/String;

    .prologue
    .line 1259
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1260
    :cond_0
    move-object p2, p3

    .line 1264
    :cond_1
    :try_start_0
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1269
    .local v1, "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    :goto_0
    return-object v1

    .line 1265
    .end local v1    # "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/Exception;
    move-object p2, p3

    .line 1267
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    .restart local v1    # "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    goto :goto_0
.end method

.method public static formatCallDuration(I)Ljava/lang/String;
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 1090
    const/16 v2, 0xe10

    if-le p0, v2, :cond_1

    .line 1091
    const-string/jumbo v2, "Hours"

    div-int/lit16 v3, p0, 0xe10

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "result":Ljava/lang/String;
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v0, v2, 0x3c

    .line 1093
    .local v0, "minutes":I
    if-lez v0, :cond_0

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Minutes"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .end local v0    # "minutes":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1097
    :cond_1
    const/16 v2, 0x3c

    if-le p0, v2, :cond_2

    .line 1098
    const-string/jumbo v2, "Minutes"

    div-int/lit8 v3, p0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1100
    :cond_2
    const-string/jumbo v2, "Seconds"

    invoke-static {v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 10
    .param p0, "date"    # J

    .prologue
    .line 1150
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1151
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1152
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1153
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1154
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1155
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1156
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1158
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1159
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1170
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1160
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1161
    const-string/jumbo v6, "Yesterday"

    const v7, 0x7f07078b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1162
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1163
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1165
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1167
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1168
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1170
    const-string/jumbo v6, "LOC_ERR: formatDate"

    goto :goto_0
.end method

.method public static formatDateAudio(J)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # J

    .prologue
    .line 1175
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1176
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1177
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1178
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1179
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1180
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1181
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1183
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1184
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "TodayAt"

    const v10, 0x7f0706f4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1195
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1185
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1186
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "YesterdayAt"

    const v10, 0x7f07078c

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1187
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1188
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0707a2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1190
    :cond_2
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0707a2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 1192
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1193
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1195
    const-string/jumbo v6, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatDateCallLog(J)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # J

    .prologue
    .line 1200
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1201
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1202
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1203
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1204
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1205
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1206
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1208
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1210
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1211
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "YesterdayAt"

    const v10, 0x7f07078c

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1212
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1213
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0707a2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1215
    :cond_2
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0707a2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 1217
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1218
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1220
    const-string/jumbo v6, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatDateChat(J)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # J

    .prologue
    .line 1133
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1134
    .local v1, "rightNow":Ljava/util/Calendar;
    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    .line 1136
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1139
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1145
    .end local v1    # "rightNow":Ljava/util/Calendar;
    :goto_0
    return-object v2

    .line 1141
    .restart local v1    # "rightNow":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1142
    .end local v1    # "rightNow":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1145
    const-string/jumbo v2, "LOC_ERR: formatDateChat"

    goto :goto_0
.end method

.method public static formatDateForBan(J)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # J

    .prologue
    .line 1303
    const-wide/16 v4, 0x3e8

    mul-long/2addr p0, v4

    .line 1304
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1305
    .local v2, "rightNow":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1306
    .local v3, "year":I
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1307
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1309
    .local v0, "dateYear":I
    if-ne v3, v0, :cond_0

    .line 1310
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1317
    .end local v0    # "dateYear":I
    .end local v2    # "rightNow":Ljava/util/Calendar;
    .end local v3    # "year":I
    :goto_0
    return-object v4

    .line 1312
    .restart local v0    # "dateYear":I
    .restart local v2    # "rightNow":Ljava/util/Calendar;
    .restart local v3    # "year":I
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1314
    .end local v0    # "dateYear":I
    .end local v2    # "rightNow":Ljava/util/Calendar;
    .end local v3    # "year":I
    :catch_0
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1317
    const-string/jumbo v4, "LOC_ERR"

    goto :goto_0
.end method

.method public static formatDateOnline(J)Ljava/lang/String;
    .locals 14
    .param p0, "date"    # J

    .prologue
    .line 1225
    const-wide/16 v8, 0x3e8

    mul-long/2addr p0, v8

    .line 1226
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1227
    .local v5, "rightNow":Ljava/util/Calendar;
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1228
    .local v2, "day":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1229
    .local v6, "year":I
    invoke-virtual {v5, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1230
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1231
    .local v0, "dateDay":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1233
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v6, v1, :cond_0

    .line 1234
    const-string/jumbo v7, "%s %s %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeen"

    const v11, 0x7f0703b8

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "TodayAt"

    const v11, 0x7f0706f4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1255
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :goto_0
    return-object v7

    .line 1243
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v5    # "rightNow":Ljava/util/Calendar;
    .restart local v6    # "year":I
    :cond_0
    add-int/lit8 v7, v0, 0x1

    if-ne v7, v2, :cond_1

    if-ne v6, v1, :cond_1

    .line 1244
    const-string/jumbo v7, "%s %s %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeen"

    const v11, 0x7f0703b8

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "YesterdayAt"

    const v11, 0x7f07078c

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1245
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide v10, 0x757b12c00L

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 1246
    const-string/jumbo v7, "formatDateAtTime"

    const v8, 0x7f0707a2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1247
    .local v4, "format":Ljava/lang/String;
    const-string/jumbo v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeenDate"

    const v11, 0x7f0703bd

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1249
    .end local v4    # "format":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "formatDateAtTime"

    const v8, 0x7f0707a2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .restart local v4    # "format":Ljava/lang/String;
    const-string/jumbo v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeenDate"

    const v11, 0x7f0703bd

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 1252
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :catch_0
    move-exception v3

    .line 1253
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1255
    const-string/jumbo v7, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "plural"    # I

    .prologue
    .line 905
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v2, :cond_1

    .line 906
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 911
    :goto_0
    return-object v2

    .line 908
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 911
    .local v1, "resourceId":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatShortNumber(I[I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I
    .param p1, "rounded"    # [I

    .prologue
    .line 1347
    const-string/jumbo v0, ""

    .line 1350
    .local v0, "K":Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "res"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 916
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 918
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_1

    .line 922
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v2, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 928
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 924
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 926
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1078
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 1079
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    :goto_0
    return-object v1

    .line 1081
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LOC_ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatTTLString(I)Ljava/lang/String;
    .locals 6
    .param p0, "ttl"    # I

    .prologue
    .line 933
    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    .line 934
    const-string/jumbo v1, "Seconds"

    invoke-static {v1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 946
    :goto_0
    return-object v1

    .line 935
    :cond_0
    const/16 v1, 0xe10

    if-ge p0, v1, :cond_1

    .line 936
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 937
    :cond_1
    const v1, 0x15180

    if-ge p0, v1, :cond_2

    .line 938
    const-string/jumbo v1, "Hours"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 939
    :cond_2
    const v1, 0x93a80

    if-ge p0, v1, :cond_3

    .line 940
    const-string/jumbo v1, "Days"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x18

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 942
    :cond_3
    div-int/lit8 v1, p0, 0x3c

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v0, v1, 0x18

    .line 943
    .local v0, "days":I
    rem-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_4

    .line 944
    const-string/jumbo v1, "Weeks"

    div-int/lit8 v2, v0, 0x7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 946
    :cond_4
    const-string/jumbo v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Weeks"

    div-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Days"

    rem-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 7
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const v6, 0x7f0704f9

    const/16 v5, -0x64

    const/16 v4, -0x65

    const/16 v3, -0x66

    .line 1381
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-nez v1, :cond_0

    .line 1382
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v1, :cond_1

    .line 1383
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 1390
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v1, :cond_3

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1392
    const-string/jumbo v1, "Online"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1411
    :goto_1
    return-object v1

    .line 1384
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v1, :cond_2

    .line 1385
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 1386
    :cond_2
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v1, :cond_0

    .line 1387
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 1395
    :cond_3
    if-eqz p0, :cond_4

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eqz v1, :cond_4

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-eqz v1, :cond_5

    .line 1396
    :cond_4
    const-string/jumbo v1, "ALongTimeAgo"

    const v2, 0x7f070012

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1398
    :cond_5
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1399
    .local v0, "currentTime":I
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-le v1, v0, :cond_6

    .line 1400
    const-string/jumbo v1, "Online"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1402
    :cond_6
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1403
    const-string/jumbo v1, "Invisible"

    const v2, 0x7f07038d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1404
    :cond_7
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v5, :cond_8

    .line 1405
    const-string/jumbo v1, "Lately"

    const v2, 0x7f0703d1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1406
    :cond_8
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v4, :cond_9

    .line 1407
    const-string/jumbo v1, "WithinAWeek"

    const v2, 0x7f070781

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1408
    :cond_9
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v3, :cond_a

    .line 1409
    const-string/jumbo v1, "WithinAMonth"

    const v2, 0x7f070780

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1411
    :cond_a
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static getCurrentLanguageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    const-string/jumbo v0, "LanguageName"

    const v1, 0x7f0703b5

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/LocaleController;
    .locals 4

    .prologue
    .line 164
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    .line 165
    .local v0, "localInstance":Lorg/telegram/messenger/LocaleController;
    if-nez v0, :cond_1

    .line 166
    const-class v3, Lorg/telegram/messenger/LocaleController;

    monitor-enter v3

    .line 167
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v1, Lorg/telegram/messenger/LocaleController;

    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .local v1, "localInstance":Lorg/telegram/messenger/LocaleController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 171
    .end local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 173
    :cond_1
    return-object v0

    .line 171
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    goto :goto_0
.end method

.method private getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_0
.end method

.method private getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "preserveEscapes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    const/4 v7, 0x0

    .line 752
    .local v7, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    .line 754
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 755
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    if-eqz v7, :cond_0

    .line 810
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 816
    :cond_0
    :goto_0
    return-object v9

    .line 812
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 757
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 758
    .local v9, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 759
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 760
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_3
    const-string/jumbo v11, "UTF-8"

    invoke-interface {v6, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 761
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 762
    .local v3, "eventType":I
    const/4 v4, 0x0

    .line 763
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 764
    .local v10, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 765
    .local v0, "attrName":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x1

    if-eq v3, v11, :cond_8

    .line 766
    const/4 v11, 0x2

    if-ne v3, v11, :cond_4

    .line 767
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 768
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 769
    .local v1, "c":I
    if-lez v1, :cond_2

    .line 770
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    .end local v1    # "c":I
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    const-string/jumbo v11, "string"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 796
    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/4 v4, 0x0

    .line 798
    const/4 v10, 0x0

    .line 799
    const/4 v0, 0x0

    .line 801
    :cond_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 772
    :cond_4
    const/4 v11, 0x4

    if-ne v3, v11, :cond_7

    .line 773
    if-eqz v0, :cond_2

    .line 774
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 775
    if-eqz v10, :cond_2

    .line 776
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 777
    if-eqz p2, :cond_5

    .line 778
    const-string/jumbo v11, "<"

    const-string/jumbo v12, "&lt;"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ">"

    const-string/jumbo v13, "&gt;"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\'"

    const-string/jumbo v13, "\\\'"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "& "

    const-string/jumbo v13, "&amp; "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 780
    :cond_5
    const-string/jumbo v11, "\\n"

    const-string/jumbo v12, "\n"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 781
    const-string/jumbo v11, "\\"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 782
    move-object v5, v10

    .line 783
    .local v5, "old":Ljava/lang/String;
    const-string/jumbo v11, "&lt;"

    const-string/jumbo v12, "<"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 784
    iget-boolean v11, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-nez v11, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 785
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 804
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "old":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 805
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 806
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 809
    if-eqz v7, :cond_6

    .line 810
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 816
    :cond_6
    :goto_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    .line 790
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "value":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x3

    if-ne v3, v11, :cond_2

    .line 791
    const/4 v10, 0x0

    .line 792
    const/4 v0, 0x0

    .line 793
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 809
    :cond_8
    if-eqz v8, :cond_9

    .line 810
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    :goto_5
    move-object v7, v8

    .line 814
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 812
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 813
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 812
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "value":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 813
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 808
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 809
    :goto_6
    if-eqz v7, :cond_a

    .line 810
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 814
    :cond_a
    :goto_7
    throw v11

    .line 812
    :catch_4
    move-exception v2

    .line 813
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 808
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 804
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method private getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v5, 0x5f

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string/jumbo v4, "en"

    .line 562
    :goto_0
    return-object v4

    .line 546
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "variantCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 550
    const-string/jumbo v4, "en"

    goto :goto_0

    .line 552
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 553
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 555
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 559
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getLocaleStringIso639()Ljava/lang/String;
    .locals 6

    .prologue
    .line 590
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 591
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    .line 592
    const-string/jumbo v5, "en"

    .line 610
    :goto_0
    return-object v5

    .line 594
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "variantCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 598
    const-string/jumbo v5, "en"

    goto :goto_0

    .line 600
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 601
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 603
    :cond_2
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 607
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "res"    # I

    .prologue
    .line 901
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "res"    # I

    .prologue
    .line 886
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 887
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 889
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 894
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    :cond_1
    return-object v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSystemLocaleStringIso639()Ljava/lang/String;
    .locals 6

    .prologue
    .line 566
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 567
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    .line 568
    const-string/jumbo v5, "en"

    .line 586
    :goto_0
    return-object v5

    .line 570
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "variantCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 574
    const-string/jumbo v5, "en"

    goto :goto_0

    .line 576
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 577
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 579
    :cond_2
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 583
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static isRTLCharacter(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 1298
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadOtherLanguages()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 722
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "langconfig"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 723
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "locales"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "locales":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 725
    const-string/jumbo v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "localesArr":[Ljava/lang/String;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v3, v6

    .line 727
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 728
    .local v1, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-eqz v1, :cond_0

    .line 729
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v3    # "localesArr":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "remote"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 735
    const-string/jumbo v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 736
    .restart local v3    # "localesArr":[Ljava/lang/String;
    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v3, v5

    .line 737
    .restart local v0    # "locale":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 738
    .restart local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 739
    if-eqz v1, :cond_2

    .line 740
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v3    # "localesArr":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private saveOtherLanguages()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 665
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "langconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 666
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 667
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 669
    iget-object v6, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 670
    .local v3, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "loc":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 672
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 673
    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v2    # "loc":Ljava/lang/String;
    .end local v3    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    const-string/jumbo v6, "locales"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 680
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 681
    iget-object v6, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 682
    .restart local v3    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v2

    .line 683
    .restart local v2    # "loc":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 684
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 685
    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    .end local v2    # "loc":Ljava/lang/String;
    .end local v3    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_5
    const-string/jumbo v6, "remote"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 692
    return-void
.end method

.method public static stringForMessageListDate(J)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # J

    .prologue
    const/4 v10, -0x1

    .line 1322
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1323
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1324
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1325
    .local v1, "day":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1326
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1328
    .local v0, "dateDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 1329
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1343
    .end local v0    # "dateDay":I
    .end local v1    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    :goto_0
    return-object v5

    .line 1331
    .restart local v0    # "dateDay":I
    .restart local v1    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    :cond_0
    sub-int v2, v0, v1

    .line 1332
    .local v2, "dayDiff":I
    if-eqz v2, :cond_1

    if-ne v2, v10, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    const-wide/32 v8, 0x1b77400

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 1333
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1334
    :cond_2
    const/4 v5, -0x7

    if-le v2, v5, :cond_3

    if-gt v2, v10, :cond_3

    .line 1335
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1337
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1340
    .end local v0    # "dateDay":I
    .end local v1    # "day":I
    .end local v2    # "dayDiff":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    :catch_0
    move-exception v3

    .line 1341
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1343
    const-string/jumbo v5, "LOC_ERR"

    goto :goto_0
.end method

.method private stringForQuantity(I)Ljava/lang/String;
    .locals 1
    .param p1, "quantity"    # I

    .prologue
    .line 514
    sparse-switch p1, :sswitch_data_0

    .line 526
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 516
    :sswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 518
    :sswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 520
    :sswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 522
    :sswitch_3
    const-string/jumbo v0, "few"

    goto :goto_0

    .line 524
    :sswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V
    .locals 1
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "override"    # Z

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V

    .line 821
    return-void
.end method

.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V
    .locals 11
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "override"    # Z
    .param p3, "fromFile"    # Z

    .prologue
    .line 824
    if-nez p1, :cond_0

    .line 875
    :goto_0
    return-void

    .line 827
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v5

    .line 828
    .local v5, "pathToFile":Ljava/io/File;
    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 829
    .local v7, "shortName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    const-string/jumbo v9, "_"

    const-string/jumbo v10, "-"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 831
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Z)V

    .line 835
    :cond_1
    :try_start_0
    iget-object v8, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "args":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 837
    new-instance v4, Ljava/util/Locale;

    iget-object v8, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 841
    .local v4, "newLocale":Ljava/util/Locale;
    :goto_1
    if-eqz p2, :cond_2

    .line 842
    iget-object v8, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v8, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 844
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 845
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 846
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "language"

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 847
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 849
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    if-nez v5, :cond_7

    .line 850
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 854
    :cond_3
    :goto_2
    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 855
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 856
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 857
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v8, :cond_4

    .line 858
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string/jumbo v9, "en"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 860
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 861
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 862
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 863
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 864
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 865
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 866
    iget-boolean v8, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-eqz v8, :cond_5

    .line 867
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale()V

    .line 868
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "newLocale":Ljava/util/Locale;
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    goto/16 :goto_0

    .line 839
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_6
    :try_start_1
    new-instance v4, Ljava/util/Locale;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-direct {v4, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "newLocale":Ljava/util/Locale;
    goto/16 :goto_1

    .line 851
    :cond_7
    if-nez p3, :cond_3

    .line 852
    invoke-direct {p0, v5}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 870
    .end local v0    # "args":[Ljava/lang/String;
    .end local v4    # "newLocale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 871
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 872
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    goto :goto_3
.end method

.method public applyLanguageFile(Ljava/io/File;)Z
    .locals 13
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 615
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v6

    .line 617
    .local v6, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "LanguageName"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 618
    .local v3, "languageName":Ljava/lang/String;
    const-string/jumbo v10, "LanguageNameInEnglish"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 619
    .local v4, "languageNameInEnglish":Ljava/lang/String;
    const-string/jumbo v10, "LanguageCode"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 620
    .local v2, "languageCode":Ljava/lang/String;
    const-string/jumbo v10, "Theming"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 621
    .local v7, "theming":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v2, :cond_0

    .line 623
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 625
    :cond_1
    const-string/jumbo v10, "&"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 661
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "languageName":Ljava/lang/String;
    .end local v4    # "languageNameInEnglish":Ljava/lang/String;
    .end local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "theming":Ljava/lang/String;
    :cond_2
    :goto_0
    return v8

    .line 628
    .restart local v2    # "languageCode":Ljava/lang/String;
    .restart local v3    # "languageName":Ljava/lang/String;
    .restart local v4    # "languageNameInEnglish":Ljava/lang/String;
    .restart local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "theming":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "&"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 631
    const-string/jumbo v10, "&"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "\\"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 635
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    .local v1, "finalFile":Ljava/io/File;
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 640
    invoke-direct {p0, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v5

    .line 641
    .local v5, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-nez v5, :cond_4

    .line 642
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 643
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iput-object v3, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 644
    iput-object v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 645
    iput-object v2, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 647
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 648
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 654
    :cond_4
    iput-object v6, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 655
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 656
    goto/16 :goto_0

    .line 658
    .end local v1    # "finalFile":Ljava/io/File;
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "languageName":Ljava/lang/String;
    .end local v4    # "languageNameInEnglish":Ljava/lang/String;
    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "theming":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Z)V
    .locals 5
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "language"    # Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    .param p3, "force"    # Z

    .prologue
    const/16 v4, 0x8

    .line 1578
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1620
    :cond_1
    :goto_0
    return-void

    .line 1581
    :cond_2
    iget v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v1, :cond_3

    if-nez p3, :cond_3

    .line 1582
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;-><init>()V

    .line 1583
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;
    iget v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    .line 1584
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocaleController$3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocaleController$3;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1598
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    if-eqz p1, :cond_4

    iget-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;-><init>()V

    .line 1600
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;
    if-nez p2, :cond_5

    .line 1601
    iget-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 1605
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    const-string/jumbo v2, "_"

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 1606
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocaleController$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocaleController$4;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1598
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;
    :cond_4
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    goto :goto_1

    .line 1603
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;
    :cond_5
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    goto :goto_2
.end method

.method public deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;)Z
    .locals 5
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    const/4 v2, 0x1

    .line 695
    iget-object v3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    :cond_0
    const/4 v2, 0x0

    .line 718
    :goto_0
    return v2

    .line 698
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne v3, p1, :cond_5

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 701
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 703
    :cond_2
    if-nez v1, :cond_3

    .line 704
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {p0, v3}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 706
    :cond_3
    if-nez v1, :cond_4

    .line 707
    const-string/jumbo v3, "en"

    invoke-direct {p0, v3}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 709
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 712
    .end local v1    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 717
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    goto :goto_0
.end method

.method public formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p1, "amount"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "inludeType"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1018
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 1021
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 1022
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1069
    const-string/jumbo v0, " %.2f"

    .line 1070
    .local v0, "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v2, v6, v8

    .line 1073
    .local v2, "doubleAmount":D
    :goto_1
    if-eqz p4, :cond_1

    .end local p3    # "type":Ljava/lang/String;
    :goto_2
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1022
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    .restart local p3    # "type":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v6, "CLF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "BHD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "IQD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "JOD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "KWD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "LYD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "OMR"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "TND"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "BIF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v6, "BYR"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "CLP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "CVE"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "DJF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "GNF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "ISK"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "JPY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v6, "KMF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v6, "KRW"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v6, "MGA"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v6, "PYG"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v6, "RWF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v6, "UGX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v6, "UYI"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v6, "VND"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v6, "VUV"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v6, "XAF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v6, "XOF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v6, "XPF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v6, "MRO"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_0

    .line 1024
    :pswitch_0
    const-string/jumbo v0, " %.4f"

    .line 1025
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double v2, v6, v8

    .line 1026
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 1035
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_1
    const-string/jumbo v0, " %.3f"

    .line 1036
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v2, v6, v8

    .line 1037
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 1059
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_2
    const-string/jumbo v0, " %.0f"

    .line 1060
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v2, p1

    .line 1061
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 1064
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_3
    const-string/jumbo v0, " %.1f"

    .line 1065
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double v2, v6, v8

    .line 1066
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 1073
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 1022
    nop

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1
        0x100df -> :sswitch_8
        0x102db -> :sswitch_9
        0x104fd -> :sswitch_0
        0x10507 -> :sswitch_a
        0x10632 -> :sswitch_b
        0x10880 -> :sswitch_c
        0x1143f -> :sswitch_d
        0x11c1c -> :sswitch_2
        0x11c61 -> :sswitch_e
        0x11f9f -> :sswitch_3
        0x11fd3 -> :sswitch_f
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_11
        0x12458 -> :sswitch_4
        0x12857 -> :sswitch_5
        0x129e7 -> :sswitch_12
        0x12b4a -> :sswitch_1c
        0x13234 -> :sswitch_6
        0x1375e -> :sswitch_13
        0x13ea1 -> :sswitch_14
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_15
        0x14a25 -> :sswitch_16
        0x14c8c -> :sswitch_17
        0x14d77 -> :sswitch_18
        0x1527d -> :sswitch_19
        0x1542f -> :sswitch_1a
        0x1544e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "amount"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 952
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 955
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_1

    move v3, v8

    .line 956
    .local v3, "discount":Z
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 957
    const/4 v10, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 1004
    const-string/jumbo v2, " %.2f"

    .line 1005
    .local v2, "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v4, v10, v12

    .line 1008
    .local v4, "doubleAmount":D
    :goto_2
    invoke-static/range {p3 .. p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v7

    .line 1009
    .local v7, "\u0441urrency":Ljava/util/Currency;
    if-eqz v7, :cond_4

    .line 1010
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    :goto_3
    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .line 1011
    .local v6, "format":Ljava/text/NumberFormat;
    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 1012
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string/jumbo v8, "-"

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1014
    .end local v6    # "format":Ljava/text/NumberFormat;
    :goto_5
    return-object v8

    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v3    # "discount":Z
    .end local v4    # "doubleAmount":D
    .end local v7    # "\u0441urrency":Ljava/util/Currency;
    :cond_1
    move v3, v9

    .line 955
    goto :goto_0

    .line 957
    .restart local v3    # "discount":Z
    :sswitch_0
    const-string/jumbo v11, "CLF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v10, v9

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "BHD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v10, v8

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "IQD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "JOD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v11, "KWD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v11, "LYD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v11, "OMR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v11, "TND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v11, "BIF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v11, "BYR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v11, "CLP"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v11, "CVE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v11, "DJF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v11, "GNF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v11, "ISK"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v11, "JPY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v11, "KMF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v11, "KRW"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v11, "MGA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v11, "PYG"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v11, "RWF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v11, "UGX"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v11, "UYI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v11, "VND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v11, "VUV"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v11, "XAF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v11, "XOF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v11, "XPF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v11, "MRO"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1c

    goto/16 :goto_1

    .line 959
    :pswitch_0
    const-string/jumbo v2, " %.4f"

    .line 960
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double v4, v10, v12

    .line 961
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 970
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_1
    const-string/jumbo v2, " %.3f"

    .line 971
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double v4, v10, v12

    .line 972
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 994
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_2
    const-string/jumbo v2, " %.0f"

    .line 995
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v4, v0

    .line 996
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 999
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_3
    const-string/jumbo v2, " %.1f"

    .line 1000
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double v4, v10, v12

    .line 1001
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 1010
    .restart local v7    # "\u0441urrency":Ljava/util/Currency;
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    goto/16 :goto_3

    .line 1012
    .restart local v6    # "format":Ljava/text/NumberFormat;
    :cond_3
    const-string/jumbo v8, ""

    goto/16 :goto_4

    .line 1014
    .end local v6    # "format":Ljava/text/NumberFormat;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_5

    const-string/jumbo v10, "-"

    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v10, ""

    goto :goto_6

    .line 957
    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1
        0x100df -> :sswitch_8
        0x102db -> :sswitch_9
        0x104fd -> :sswitch_0
        0x10507 -> :sswitch_a
        0x10632 -> :sswitch_b
        0x10880 -> :sswitch_c
        0x1143f -> :sswitch_d
        0x11c1c -> :sswitch_2
        0x11c61 -> :sswitch_e
        0x11f9f -> :sswitch_3
        0x11fd3 -> :sswitch_f
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_11
        0x12458 -> :sswitch_4
        0x12857 -> :sswitch_5
        0x129e7 -> :sswitch_12
        0x12b4a -> :sswitch_1c
        0x13234 -> :sswitch_6
        0x1375e -> :sswitch_13
        0x13ea1 -> :sswitch_14
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_15
        0x14a25 -> :sswitch_16
        0x14c8c -> :sswitch_17
        0x14d77 -> :sswitch_18
        0x1527d -> :sswitch_19
        0x1542f -> :sswitch_1a
        0x1544e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method public getSystemDefaultLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTranslitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 1623
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 1624
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0x208

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    .line 1625
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u023c"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d87"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0256"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eff"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d13"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f8"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e01"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02af"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0177"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029e"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eeb"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua733"

    const-string/jumbo v7, "aa"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0133"

    const-string/jumbo v7, "ij"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3d"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026a"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e07"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0280"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb03"

    const-string/jumbo v7, "ffi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c79"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d0"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua755"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fd"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1d"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2092"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c65"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0299"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0188"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0266"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6c"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e63"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0111"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed7"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u025f"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9a"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028c"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua753"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb01"

    const-string/jumbo v7, "fi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d84"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0f"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0117"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0451"

    const-string/jumbo v7, "yo"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0b"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010b"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0281"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0195"

    const-string/jumbo v7, "hv"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0180"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0223"

    const-string/jumbo v7, "ou"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f0"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d83"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4b"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0249"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e7"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f3"

    const-string/jumbo v7, "dz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017a"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua737"

    const-string/jumbo v7, "au"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d6"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d79"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0250"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0105"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f5"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027b"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01df"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0234"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0282"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb02"

    const-string/jumbo v7, "fl"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0209"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e49"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ef"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f1"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d09"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0287"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e93"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef7"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0233"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e69"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011d"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0432"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1d"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e33"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua76b"

    const-string/jumbo v7, "et"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0165"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73f"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029f"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua739"

    const-string/jumbo v7, "av"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fb"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e6"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0438"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0103"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d8"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua785"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d63"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d00"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0183"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e29"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e67"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2091"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029c"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8b"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua745"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0b"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a3"

    const-string/jumbo v7, "oi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua751"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0127"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c74"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e87"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f9"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0261"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0274"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d18"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d65"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016b"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e03"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e57"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044c"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0255"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecd"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eaf"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0192"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e3"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua761"

    const-string/jumbo v7, "vy"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb00"

    const-string/jumbo v7, "ff"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d89"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f4"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ff"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e73"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0225"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1f"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e13"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0207"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0215"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043f"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0235"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02a0"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e9"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0129"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e75"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0167"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027e"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0199"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua757"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ead"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043d"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0284"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u019a"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d82"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0434"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d74"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua783"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8c"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0275"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e09"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d64"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e91"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e79"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0148"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028d"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea7"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01c9"

    const-string/jumbo v7, "lj"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0253"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027c"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f2"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e98"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0257"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73d"

    const-string/jumbo v7, "ay"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b0"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d80"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01dc"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb9"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0265"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d4"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028e"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0231"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec7"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebf"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012d"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c78"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6f"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d91"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e27"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e65"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00eb"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0d"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f6"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e9"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0131"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010f"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef5"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044f"

    const-string/jumbo v7, "ya"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0175"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec1"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee9"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b6"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0135"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0d"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016d"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029d"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0436"

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ea"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01da"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0121"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e59"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u019e"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044a"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e17"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9d"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d81"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0137"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d02"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0258"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua730"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0430"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74f"

    const-string/jumbo v7, "oo"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d86"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d7d"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0446"

    const-string/jumbo v7, "ts"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eef"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c6a"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e25"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0163"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d71"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e41"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0e"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua75f"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e8"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8e"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua77a"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d88"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043c"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d22"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0271"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7d"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0169"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00df"

    const-string/jumbo v7, "ss"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0442"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0125"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d75"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0290"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5f"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0272"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e0"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e99"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef3"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d14"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2093"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0217"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7c"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eab"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0291"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9b"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2d"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua735"

    const-string/jumbo v7, "ao"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0240"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ff"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01dd"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ed"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d05"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d85"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f9"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e05"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee5"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043a"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b4"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c66"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0437"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c61"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0237"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d76"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2b"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c73"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e35"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edd"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ee"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0123"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0205"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0227"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0449"

    const-string/jumbo v7, "sch"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024b"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6d"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua778"

    const-string/jumbo v7, "um"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d04"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8d"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee7"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec9"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1a"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015b"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74b"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef9"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e61"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01cc"

    const-string/jumbo v7, "nj"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0201"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e97"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013a"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017e"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d7a"

    const-string/jumbo v7, "th"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u018c"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0219"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0161"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d99"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebd"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9c"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0247"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e77"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u023f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d20"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua76d"

    const-string/jumbo v7, "is"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u025b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01fb"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb04"

    const-string/jumbo v7, "ffl"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7a"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6b"

    const-string/jumbo v7, "ue"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0221"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c6c"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e81"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8f"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua787"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011f"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0273"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029b"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1c"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0444"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea9"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e45"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0268"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d19"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ce"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0443"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022b"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027f"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ad"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2f"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01fd"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c71"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0276"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e43"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017c"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0115"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73b"

    const-string/jumbo v7, "av"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edf"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec5"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecb"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6d"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb06"

    const-string/jumbo v7, "st"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e37"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0155"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d15"

    const-string/jumbo v7, "ou"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0288"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0101"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044d"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e19"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d11"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e7"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8a"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb7"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0173"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e5"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0440"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua741"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e95"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015d"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e15"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0260"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua749"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua77c"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8d"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0445"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d2"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0119"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed5"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ab"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01eb"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "i\u0307"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e47"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0107"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d77"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e85"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e11"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e39"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0447"

    const-string/jumbo v7, "ch"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0153"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d73"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0211"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d70"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d01"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0140"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e4"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a5"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecf"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012f"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0213"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01c6"

    const-string/jumbo v7, "dz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e21"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7b"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u014d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013e"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e83"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u021b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0144"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0203"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fc"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua781"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d10"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edb"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d03"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0279"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d72"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6e"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c68"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u014f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fa"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5b"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02ae"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016f"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e55"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d96"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef1"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d62"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e71"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec3"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eed"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ed"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0254"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0441"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0439"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027a"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0262"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0159"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e96"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0171"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0448"

    const-string/jumbo v7, "sh"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e23"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0236"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0146"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d92"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ec"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e89"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0431"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0113"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d07"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0142"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed9"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026d"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0a"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e31"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7f"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0229"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e2"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0157"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028b"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2090"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2184"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d93"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0270"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0435"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d21"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010d"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f5"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0109"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044e"

    const-string/jumbo v7, "yu"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d97"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua743"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua759"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0433"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e51"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua731"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e53"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u021f"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0151"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua729"

    const-string/jumbo v7, "tz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebb"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043e"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2146
    .local v2, "dst":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2147
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 2148
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2149
    .local v1, "ch":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2150
    .local v4, "tch":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2156
    .end local v1    # "ch":Ljava/lang/String;
    .end local v4    # "tch":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public isCurrentLocalLocale()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v0

    return v0
.end method

.method public loadRemoteLanguages()V
    .locals 4

    .prologue
    .line 1506
    iget-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    if-eqz v1, :cond_0

    .line 1575
    :goto_0
    return-void

    .line 1509
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    .line 1510
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;-><init>()V

    .line 1511
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocaleController$2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/LocaleController$2;-><init>(Lorg/telegram/messenger/LocaleController;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public onDeviceConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1105
    iget-boolean v4, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    if-eqz v4, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 1109
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 1110
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1111
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1112
    .local v3, "toSet":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1113
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    goto :goto_0

    .line 1115
    .end local v3    # "toSet":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1116
    .local v2, "newLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "d1":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "d2":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1120
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 1122
    :cond_3
    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1123
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1124
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v4, :cond_0

    .line 1125
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string/jumbo v5, "en"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    goto :goto_0
.end method

.method public recreateFormatters()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1273
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1274
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 1275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1277
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1279
    const-string/jumbo v0, "en"

    .line 1281
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "fa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v3

    :goto_0
    sput-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 1282
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ko"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    :cond_3
    sput v3, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    .line 1284
    const-string/jumbo v2, "formatterMonth"

    const v3, 0x7f0707a9

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd MMM"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1285
    const-string/jumbo v2, "formatterYear"

    const v3, 0x7f0707ae

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd.MM.yy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1286
    const-string/jumbo v2, "formatterYearMax"

    const v3, 0x7f0707af

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd.MM.yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1287
    const-string/jumbo v2, "chatDate"

    const v3, 0x7f07079f

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "d MMMM"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1288
    const-string/jumbo v2, "chatFullDate"

    const v3, 0x7f0707a0

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "d MMMM yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1289
    const-string/jumbo v2, "formatterWeek"

    const v3, 0x7f0707ad

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EEE"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1290
    const-string/jumbo v2, "formatterMonthYear"

    const v3, 0x7f0707aa

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MMMM yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1291
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    move-object v2, v1

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "formatterDay24H"

    const v4, 0x7f0707a8

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "HH:mm"

    :goto_3
    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1292
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "formatterStats24H"

    const v3, 0x7f0707ac

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "MMM dd yyyy, HH:mm"

    :goto_5
    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1293
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "formatterBannedUntil24H"

    const v3, 0x7f0707a4

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "MMM dd yyyy, HH:mm"

    :goto_7
    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1294
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "formatterBannedUntilThisYear24H"

    const v3, 0x7f0707a6

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "MMM dd, HH:mm"

    :goto_9
    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1295
    return-void

    .line 1281
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1291
    :cond_6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "formatterDay12H"

    const v4, 0x7f0707a7

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    const-string/jumbo v4, "h:mm a"

    goto :goto_3

    .line 1292
    :cond_9
    const-string/jumbo v2, "formatterStats12H"

    const v3, 0x7f0707ab

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    const-string/jumbo v3, "MMM dd yyyy, h:mm a"

    goto :goto_5

    .line 1293
    :cond_b
    const-string/jumbo v2, "formatterBannedUntil12H"

    const v3, 0x7f0707a3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const-string/jumbo v3, "MMM dd yyyy, h:mm a"

    goto :goto_7

    .line 1294
    :cond_d
    const-string/jumbo v2, "formatterBannedUntilThisYear12H"

    const v3, 0x7f0707a5

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    const-string/jumbo v3, "MMM dd, h:mm a"

    goto :goto_9
.end method

.method public reloadCurrentRemoteLocale()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Z)V

    .line 540
    return-void
.end method

.method public saveRemoteLocaleStrings(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;)V
    .locals 12
    .param p1, "difference"    # Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    .prologue
    .line 1418
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remote_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1421
    .local v2, "finalFile":Ljava/io/File;
    :try_start_0
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    if-nez v7, :cond_1

    .line 1422
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1426
    .local v4, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 1427
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$LangPackString;

    .line 1428
    .local v3, "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackString;

    if-eqz v7, :cond_2

    .line 1429
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1424
    .end local v0    # "a":I
    .end local v3    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    .end local v4    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object v4

    .restart local v4    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1430
    .restart local v0    # "a":I
    .restart local v3    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    :cond_2
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;

    if-eqz v7, :cond_9

    .line 1431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_zero"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_one"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_two"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    :goto_5
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_few"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    :goto_6
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_many"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_other"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    :goto_8
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1500
    .end local v0    # "a":I
    .end local v3    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    .end local v4    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1503
    :goto_9
    return-void

    .line 1431
    .restart local v0    # "a":I
    .restart local v3    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    .restart local v4    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v7, ""

    goto/16 :goto_3

    .line 1432
    :cond_4
    const-string/jumbo v7, ""

    goto/16 :goto_4

    .line 1433
    :cond_5
    const-string/jumbo v7, ""

    goto :goto_5

    .line 1434
    :cond_6
    const-string/jumbo v7, ""

    goto :goto_6

    .line 1435
    :cond_7
    const-string/jumbo v7, ""

    goto :goto_7

    .line 1436
    :cond_8
    const-string/jumbo v7, ""

    goto :goto_8

    .line 1437
    :cond_9
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackStringDeleted;

    if-eqz v7, :cond_0

    .line 1438
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1441
    .end local v3    # "string":Lorg/telegram/tgnet/TLRPC$LangPackString;
    :cond_a
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1442
    .local v6, "writer":Ljava/io/BufferedWriter;
    const-string/jumbo v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1443
    const-string/jumbo v7, "<resources>\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1445
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "<string name=\"%1$s\">%2$s</string>\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 1447
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v7, "</resources>"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1449
    invoke-direct {p0, v2}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v5

    .line 1450
    .local v5, "valuesToSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lorg/telegram/messenger/LocaleController$1;

    invoke-direct {v7, p0, p1, v5}, Lorg/telegram/messenger/LocaleController$1;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9
.end method
