.class public final synthetic Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->values()[Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->TYPE:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_DESC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_DIFF:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_ASC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
