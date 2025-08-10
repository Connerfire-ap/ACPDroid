.class public final Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;
.super Ljava/lang/Object;
.source "CategoryPickDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\"\u0016\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\u00a8\u0006\u000c"
    }
    d2 = {
        "passTypes",
        "",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "[Lorg/ligi/passandroid/model/pass/PassType;",
        "showCategoryPickDialog",
        "",
        "context",
        "Landroid/content/Context;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final passTypes:[Lorg/ligi/passandroid/model/pass/PassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/ligi/passandroid/model/pass/PassType;

    const/4 v1, 0x0

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->passTypes:[Lorg/ligi/passandroid/model/pass/PassType;

    return-void
.end method

.method public static final synthetic access$getPassTypes$p()[Lorg/ligi/passandroid/model/pass/PassType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->passTypes:[Lorg/ligi/passandroid/model/pass/PassType;

    return-object v0
.end method

.method public static final showCategoryPickDialog(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bus"    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pass"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bus"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "adapter":Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    check-cast v0, Landroid/widget/ListAdapter;

    .end local v0    # "adapter":Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;
    new-instance v2, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$1;

    invoke-direct {v2, p1, p2}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$1;-><init>(Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52
    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 55
    return-void
.end method
