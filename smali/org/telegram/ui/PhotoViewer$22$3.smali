.class Lorg/telegram/ui/PhotoViewer$22$3;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$22;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$22;

    .prologue
    .line 2263
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22$3;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2266
    if-nez p1, :cond_0

    .line 2267
    const-string/jumbo v0, "ShortMessageLifetimeForever"

    const v1, 0x7f070683

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2271
    :goto_0
    return-object v0

    .line 2268
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x15

    if-ge p1, v0, :cond_1

    .line 2269
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2271
    :cond_1
    add-int/lit8 v0, p1, -0x10

    mul-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
