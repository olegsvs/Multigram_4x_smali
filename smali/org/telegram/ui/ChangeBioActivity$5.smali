.class Lorg/telegram/ui/ChangeBioActivity$5;
.super Ljava/lang/Object;
.source "ChangeBioActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeBioActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeBioActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeBioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeBioActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$5;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ChangeBioActivity$5;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    # getter for: Lorg/telegram/ui/ChangeBioActivity;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/ChangeBioActivity;->access$200(Lorg/telegram/ui/ChangeBioActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$5;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    # getter for: Lorg/telegram/ui/ChangeBioActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/ChangeBioActivity;->access$300(Lorg/telegram/ui/ChangeBioActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x46

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 156
    return-void
.end method
