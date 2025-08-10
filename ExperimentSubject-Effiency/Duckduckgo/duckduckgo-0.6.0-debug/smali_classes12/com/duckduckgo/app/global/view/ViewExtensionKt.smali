.class public final Lcom/duckduckgo/app/global/view/ViewExtensionKt;
.super Ljava/lang/Object;
.source "ViewExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0001\u001a\n\u0010\u0008\u001a\u00020\t*\u00020\t\u001a\n\u0010\n\u001a\u00020\t*\u00020\t\u001a2\u0010\u000b\u001a\u00020\u0007*\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t\u00a8\u0006\u0010"
    }
    d2 = {
        "gone",
        "Landroid/view/View;",
        "hide",
        "hideKeyboard",
        "",
        "show",
        "showKeyboard",
        "",
        "toDp",
        "",
        "toPx",
        "updatePadding",
        "paddingStart",
        "paddingTop",
        "paddingEnd",
        "paddingBottom",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xa0ba586456f18c4L    # -1.5647093010003938E260

    const/16 v2, 0x2b

    const-string v3, "com/duckduckgo/app/global/view/ViewExtensionKt"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public static final gone(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "$this$gone"    # Landroid/view/View;

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$gone"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 55
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 57
    :goto_0
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public static final hide(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "$this$hide"    # Landroid/view/View;

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$hide"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 45
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 47
    :goto_0
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public static final hideKeyboard(Landroid/view/View;)Z
    .locals 6
    .param p0, "$this$hideKeyboard"    # Landroid/view/View;

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$hideKeyboard"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v1

    .line 74
    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/16 v4, 0x17

    aput-boolean v3, v0, v4

    .line 76
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v4

    const/16 v5, 0x18

    aput-boolean v3, v0, v5

    return v4

    .line 75
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x16

    aput-boolean v3, v0, v4

    .end local p0    # "$this$hideKeyboard":Landroid/view/View;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .restart local p0    # "$this$hideKeyboard":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 78
    nop

    .line 79
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    return v2
.end method

.method public static final show(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "$this$show"    # Landroid/view/View;

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$show"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 35
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 37
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method public static final showKeyboard(Landroid/view/View;)V
    .locals 4
    .param p0, "$this$showKeyboard"    # Landroid/view/View;

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$showKeyboard"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/16 v3, 0x11

    aput-boolean v2, v0, v3

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/16 v3, 0x12

    aput-boolean v2, v0, v3

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 67
    const/16 v3, 0x13

    aput-boolean v2, v0, v3

    return-void

    .line 64
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    aput-boolean v2, v0, v3

    throw v1
.end method

.method public static final toDp(I)I
    .locals 4
    .param p0, "$this$toDp"    # I

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    int-to-float v1, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Resources.getSystem()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x29

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final toPx(I)I
    .locals 4
    .param p0, "$this$toPx"    # I

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    int-to-float v1, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Resources.getSystem()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final updatePadding(Landroid/view/View;IIII)V
    .locals 3
    .param p0, "$this$updatePadding"    # Landroid/view/View;
    .param p1, "paddingStart"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingEnd"    # I
    .param p4, "paddingBottom"    # I

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$updatePadding"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 92
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static synthetic updatePadding$default(Landroid/view/View;IIIIILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->$jacocoInit()[Z

    move-result-object p6

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    aput-boolean v1, p6, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1d

    aput-boolean v1, p6, p1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    const/16 v0, 0x1e

    aput-boolean v1, p6, v0

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x1f

    aput-boolean v1, p6, v0

    goto :goto_1

    :cond_1
    const/16 p2, 0x20

    aput-boolean v1, p6, p2

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    const/16 v0, 0x21

    aput-boolean v1, p6, v0

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_2

    const/16 v0, 0x22

    aput-boolean v1, p6, v0

    goto :goto_2

    :cond_2
    const/16 p3, 0x23

    aput-boolean v1, p6, p3

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    const/16 v0, 0x24

    aput-boolean v1, p6, v0

    :goto_2
    and-int/lit8 p5, p5, 0x8

    if-nez p5, :cond_3

    const/16 p5, 0x25

    aput-boolean v1, p6, p5

    goto :goto_3

    :cond_3
    const/16 p4, 0x26

    aput-boolean v1, p6, p4

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    const/16 p5, 0x27

    aput-boolean v1, p6, p5

    :goto_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->updatePadding(Landroid/view/View;IIII)V

    const/16 p0, 0x28

    aput-boolean v1, p6, p0

    return-void
.end method
