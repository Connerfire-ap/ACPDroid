.class final Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;
.super Ljava/lang/Object;
.source "MoveToNewTopicUI.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $move:Lkotlin/jvm/functions/Function1;

.field final synthetic $newTopicEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$newTopicEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$move:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$newTopicEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    iget-object v1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$newTopicEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    # getter for: Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->access$getContext$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$newTopicEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 39
    :goto_1
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$move:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$1;->$newTopicEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
