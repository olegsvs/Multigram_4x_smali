.class Lorg/telegram/ui/IntroActivity$7$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$7;

.field final synthetic val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$7;Lorg/telegram/tgnet/TLRPC$LangPackString;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/IntroActivity$7;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$7$1;->this$1:Lorg/telegram/ui/IntroActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$7$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$7$1;->this$1:Lorg/telegram/ui/IntroActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity$7;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$1200(Lorg/telegram/ui/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$7$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method
