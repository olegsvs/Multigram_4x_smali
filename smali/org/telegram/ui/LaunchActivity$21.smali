.class Lorg/telegram/ui/LaunchActivity$21;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showLanguageAlertInternal(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2576
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # setter for: Lorg/telegram/ui/LaunchActivity;->localeDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v2}, Lorg/telegram/ui/LaunchActivity;->access$1802(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 2581
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$21;->this$0:Lorg/telegram/ui/LaunchActivity;

    # setter for: Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v2}, Lorg/telegram/ui/LaunchActivity;->access$1702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2586
    :cond_0
    return-void
.end method
