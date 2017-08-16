.class Lorg/telegram/ui/IntroActivity$6$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$6;

.field final synthetic val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$6;Lorg/telegram/tgnet/TLRPC$LangPackString;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/IntroActivity$6;

    .prologue
    .line 419
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$6$1;->this$1:Lorg/telegram/ui/IntroActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$6$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$6$1;->this$1:Lorg/telegram/ui/IntroActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity$6;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$1200(Lorg/telegram/ui/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$6$1;->val$string:Lorg/telegram/tgnet/TLRPC$LangPackString;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method
