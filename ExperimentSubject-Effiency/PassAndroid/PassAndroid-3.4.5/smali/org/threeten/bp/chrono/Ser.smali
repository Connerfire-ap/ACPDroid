.class final Lorg/threeten/bp/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCALDATETIME_TYPE:B = 0xct

.field static final CHRONO_TYPE:B = 0xbt

.field static final CHRONO_ZONEDDATETIME_TYPE:B = 0xdt

.field static final HIJRAH_DATE_TYPE:B = 0x3t

.field static final HIJRAH_ERA_TYPE:B = 0x4t

.field static final JAPANESE_DATE_TYPE:B = 0x1t

.field static final JAPANESE_ERA_TYPE:B = 0x2t

.field static final MINGUO_DATE_TYPE:B = 0x5t

.field static final MINGUO_ERA_TYPE:B = 0x6t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_ERA_TYPE:B = 0x8t

.field private static final serialVersionUID:J = 0x6d0b833274ca0096L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-byte p1, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    .line 104
    iput-object p2, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 173
    .local v0, "type":B
    invoke-static {v0, p0}, Lorg/threeten/bp/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    packed-switch p0, :pswitch_data_0

    .line 190
    :pswitch_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 179
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_4
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_5
    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_6
    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_7
    invoke-static {p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_8
    invoke-static {p1}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_9
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_a
    invoke-static {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_b
    invoke-static {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 2
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 157
    :goto_0
    return-void

    .line 125
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 128
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 131
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p1, Lorg/threeten/bp/chrono/HijrahEra;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/HijrahEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 134
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 137
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p1, Lorg/threeten/bp/chrono/MinguoEra;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 140
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 143
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 146
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_9
    check-cast p1, Lorg/threeten/bp/chrono/Chronology;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/Chronology;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 149
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_a
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 152
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_b
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    .line 168
    iget-byte v0, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    invoke-static {v0, p1}, Lorg/threeten/bp/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-byte v0, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    iget-object v1, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 116
    return-void
.end method
