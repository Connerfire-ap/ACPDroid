.class final Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;
.super Ljava/lang/Object;
.source "EditViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->setupButtons(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 46
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    check-cast v2, Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-static {v3}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->access$getTime$p(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/ZonedDateTime;->getYear()I

    move-result v3

    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-static {v4}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->access$getTime$p(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/ZonedDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v4

    const-string v5, "time.month"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/threeten/bp/Month;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-static {v5}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->access$getTime$p(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 47
    return-void
.end method
