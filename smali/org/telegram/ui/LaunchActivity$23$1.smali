.class Lorg/telegram/ui/LaunchActivity$23$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$23;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$23;

.field final synthetic val$keys:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$23;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$23;

    .prologue
    .line 2656
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$23$1;->val$keys:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2659
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$23$1;->val$keys:Ljava/util/HashMap;

    # setter for: Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$2002(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 2660
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->englishLocaleStrings:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1900(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->systemLocaleStrings:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2000(Lorg/telegram/ui/LaunchActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$23;->val$infos:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$23;->val$infos:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v3, v3, Lorg/telegram/ui/LaunchActivity$23;->val$systemLang:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LaunchActivity;->showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->access$2800(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V

    .line 2663
    :cond_0
    return-void
.end method
